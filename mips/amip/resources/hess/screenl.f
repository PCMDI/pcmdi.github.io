      SUBROUTINE SCREENL(USTAR,ZO,TG,QG,VMOD,
     *           HSENS,HLAT,RHO,PSS,theta1,QS0,THETA0,
     & THETAS,QSTAR, PSC,RIB, DELU,DELTHE,DELQS0, UP,TSP,QSP,RL,
     *                 ILONGL,TSAIR,QSAIR,U10)

c $Id: screenl.f,v 2.4 1998/05/21 16:57:53 mwehner Exp $
C
C     subroutine to calculate the "screen height air" temperature and
C      "screen height" mixing ratio 
C      and "anemometer level" wind using the 
C      predictor corrector method of Hess and McAvaney
C
C     Input variables
C       USTAR - friction velocity (m/sec) 
C       ZO    - rougness length (m)
C       TG    - temperature (K) at first model level above surface
C       QG    - mixing ratio (kgm/kgm) at first model level above surface
C       VMOD  - magnitude of wind (m/sec) at first model level above surface
C       HSENS - sensible heat flux at first model level above surface (w/m^2)
C             - positive out of surface
C       HLAT  - latent heat flux at first model level above surface (w/m^2)
C             - positive out of surface
C       RHO   - air density at first model level above surface
C       PSS   - surface pressure (Pa)
C       QS0   - mixing ratio at surface (kgm/kgm)
C      THETA0 - potential temperature at surface (K)
C       ILONGL - number of points to be calculated
C     THETA1 - potential temperature at lowest model level
C
C
      implicit none
      real*8 cp, rgas, roncp, hl, grav, vkar, zsc, zan, eps
      PARAMETER (CP=1.00464d3,RGAS=287.04,RONCP=RGAS/CP,HL=2.5104d6)
      PARAMETER (GRAV=9.80616,VKAR=0.4,ZSC=2.0,ZAN=10.,EPS=1.0E-20)
C
C      CP
C      RGAS - gas constant
C      HL - latent heat of vaporisation
C      GRAV - gravity aceeleration
C      VKAR - vom karman constant
C      ZSC  - screen height (m)
C      ZAN - anemometer height (m)
C      EPS - small "test" number
C
C
C     input
      integer ilongl
      real*8 USTAR(ILONGL),ZO(ILONGL),TG(ILONGL),QG(ILONGL),
     *          HSENS(ILONGL),VMOD(ILONGL),
     *          HLAT(ILONGL),RHO(ILONGL),PSS(ILONGL)
      real*8 THETA0(ILONGL),QS0(ILONGL)
      real*8 THETA1(ILONGL)
C
C    Output variables
C       TSAIR - screen height air temperature at height ZSC 
C          (ZSC is set by parameter statement below)
C       QSAIR - screen height mixing ratio at height ZSC
C       U10   - magnitude of wind at anemometer level ZAN (set by parameter below)
C
      real*8 TSAIR(ILONGL),QSAIR(ILONGL),U10(ILONGL)
C
C     Local variables
C     THETAS - potential temperature scaling
C     QSTAR - mixing ratio scaling
C     PSC    -pressure at "screen" height (current)
C     RIB    - Richardson number at "screen " height (diagnostic)
C     UP     - current wind at "screen height"
C     TSP    -current temperature at screen height
C     QSP    -current mixing ratio at screen height
C     DELU   - correction to current guess for wind
C     DELTHE - correction to current guess of potential temperature
C     DELQS0 - correction to current mixing ratio
C     RL    - Monin Obukhov length - for diagnostic purposes
C
      real*8 THETAS(ILONGL),QSTAR(ILONGL)
      real*8 PSC(ILONGL),RIB(ILONGL)
      real*8 DELU(ILONGL),DELTHE(ILONGL),DELQS0(ILONGL)
      real*8 UP(ILONGL),TSP(ILONGL),QSP(ILONGL),RL(ILONGL)
      integer ik, iter
      real*8 THETASC


      integer niter
C
C     NITER sets the number of iterations of the corrector
      PARAMETER (NITER=2)
C
C     PREPARE INITIAL VALUES
C
      DO  IK=1,ILONGL
C
c      thetas is as in Eqn 11 of H&M
      THETAS(IK) = -SIGN(max(ABS(HSENS(IK)),EPS),HSENS(IK))
     & / (rho(ik) * cp * ustar(ik))
     
c      qstar is as in Eqn  12 of H&M
      QSTAR(IK) = -HLAT(IK)/(RHO(IK)*HL*USTAR(IK))
C      theta1 is potential temperature at lowest model level above surface
* I changed theta1 to be an input variable so no assumptions about the
* the vertical coordinate are made. (mfw 3/19/98)
c     THETA1(IK) = TG(IK) * (100000.d0/(S*PSS(IK)))**RONCP
C      rl is Monin-Obukhov length
      RL(IK) = (USTAR(IK)**2 * THETA1(IK)) /(VKAR * GRAV * THETAS(IK))
C     ensure RL is not too small
      if (abs(rl(ik)) .lt. eps) rl(ik) = eps
      END DO
C
C      At SCREEN HEIGHT - ZSC
C
C     COMPUTE FIRST PREDICTOR
C
      CALL SCREENP(RL,ZO,THETAS,USTAR,QSTAR,
     *             VMOD,THETA0,THETA1,QS0,QG, ILONGL,
     *             ZSC,
     *                       DELU,DELTHE,DELQS0)
C
      DO IK=1,ILONGL
      UP(IK)=DELU(IK)
      QSP(IK)= QS0(IK) + DELQS0(IK)
      THETASC = THETA0(IK) + DELTHE(IK)
      TSP(IK) = THETASC * (100000.d0/PSS(IK))**(-RONCP)
      END DO
C
C       THE ITERATION
C
      DO ITER=1,NITER
C
C     COMPUTE CORRECTOR
C
      CALL SCREENC(ZO,UP,ZSC,QSP,TSP,PSS,
     *           USTAR,THETAS,QSTAR,THETA0,QS0,ILONGL,
     *           PSC,RIB,DELU,DELTHE,DELQS0)
C
      DO IK=1,ILONGL
      UP(IK)=DELU(IK)
      QSP(IK)= QS0(IK) + DELQS0(IK)
      THETASC = THETA0(IK) + DELTHE(IK)
      TSP(IK) = THETASC * (100000.d0/PSC(IK))**(-RONCP)
      END DO
C
      END DO
C
C     END OF ITERATION
C
      DO IK=1,ILONGL
      TSAIR(IK)=TSP(IK)
      QSAIR(IK)=QSP(IK)
      END DO
C
C      At anemometer level - ZAN
C
      CALL SCREENP(RL,ZO,THETAS,USTAR,QSTAR,
     *             VMOD,THETA0,THETA1,QS0,QG, ILONGL,
     *             ZAN,
     *                       DELU,DELTHE,DELQS0)
C
      DO IK=1,ILONGL
      UP(IK)=DELU(IK)
      QSP(IK)= QS0(IK) + DELQS0(IK)
      THETASC = THETA0(IK) + DELTHE(IK)
      TSP(IK) = THETASC * (100000.d0/PSS(IK))**(-RONCP)
      END DO
C
C     ITERATION
C
      DO ITER=1,NITER
C
      CALL SCREENC(ZO,UP,ZAN,QSP,TSP,PSS,
     *           USTAR,THETAS,QSTAR,THETA0,QS0,ILONGL,
     *           PSC,RIB,DELU,DELTHE,DELQS0)
C
      DO IK=1,ILONGL
      UP(IK)=DELU(IK)
      QSP(IK)= QS0(IK) + DELQS0(IK)
      THETASC = THETA0(IK) + DELTHE(IK)
      TSP(IK) = THETASC * (100000.d0/PSC(IK))**(-RONCP)
      END DO
C
      END DO
C
C     END OF ITERATION
C
      DO IK=1,ILONGL
      U10(IK)=UP(IK)
      END DO
C
      RETURN
      END
      SUBROUTINE SCREENP(RL,ZO,THETAS,USTAR,QSTAR,
     *             VMOD,THETA0,THETA1,QS0,QG, ILONGL,HEIGHT,
     *                    DELU,DELTHE,DELQS0)
C
C     The Predictor equation for screen temps and wind
C      based on dyer-businger
C      As per Hess&Mcavaney, 1995.
C
      implicit none
      real*8 vkar
      PARAMETER (VKAR=0.4)
C
C     INPUT
C     RL   - Monin-Obukhov length
C     ZO   - roughness length
C     THETAS - potential temperature scaling factor
C     USTAR - friction velocity
C     QSTAR - mixing ratio scling factor
C     VMOD - wind magnitude at lowest model level
C     THETA0 - surface potential temperature
C     THETA1  - potential temperature of lowest model level
C     QSO    - mixing ratio at surface
C     QG - mixing ratio at lowest model level
C     ILONGL - number of points
C     HEIGHT - height of level for calculations 
C
      integer ilongl
      real*8 RL(ILONGL),ZO(ILONGL)
      real*8 THETAS(ILONGL),USTAR(ILONGL),QSTAR(ILONGL)
      real*8 VMOD(ILONGL),THETA0(ILONGL),THETA1(ILONGL),QS0(ILONGL),
     *        QG(ILONGL)
      real*8 HEIGHT
C
C     OUTPUT
C     DELU - correction to wind
C     DELTHE - correction to potential temperature
C     DELQS0 - correction to mixing ratio
C
      real*8 DELU(ILONGL),DELTHE(ILONGL),DELQS0(ILONGL)

c     working variables
      real*8 xm, xmh, xm0, xmh0
      integer ik
C
      DO 100 IK=1,ILONGL
C
      IF(RL(IK).GE.0.d00)THEN
C
C     STABLE
C        full formula only when wind exceeds a minimum value (1 m/sec) 
C             and stability not too large
C
        IF(VMOD(IK).GT.1.0.AND.RL(IK).LE.1.0)THEN
C
          DELU(IK) = (USTAR(IK)/VKAR)* 
     *                   ( log((HEIGHT+ZO(IK))/ZO(IK)) +
     *                  min(5.0d0,5.0d0 * (HEIGHT-ZO(IK))/RL(IK) ) )
          DELTHE(IK) = (THETAS(IK)/VKAR) * 
     *                  ( log((HEIGHT+ZO(IK))/ZO(IK)) +
     *                  min(5.0d0, 5.0d0 * (HEIGHT-ZO(IK))/RL(IK)) )
          DELQS0(IK) = (QSTAR(IK)/VKAR) * 
     *                  ( log((HEIGHT+ZO(IK))/ZO(IK)) +
     *                  min(5.0d0, 5.0d0 * (HEIGHT-ZO(IK))/RL(IK)) )
C
        ELSE
C
          DELTHE(IK)=0.1*(THETA1(IK)-THETA0(IK))
          DELQS0(IK)=0.1*(max(QG(IK),0.0)-QS0(IK))
          DELU(IK)=0.1*VMOD(IK)
        ENDIF
      ELSE
C
C     UNSTABLE
C
C      winds must not be too light and  not too unstable
        IF(VMOD(IK).GT.5.0d0.AND.ABS(RL(IK)).LE.50.0)THEN
C
          XM = SQRT(SQRT(1.0d0 - 16.0d0 * HEIGHT/RL(IK)) )    
          XMH = SQRT(1.0d0 - 16.0d0 * HEIGHT/RL(IK))
          XM0 = SQRT(SQRT(1.0d0 - 16.0d0 * ZO(IK)/RL(IK)) )
          XMH0 = SQRT(1.0d0 - 16.0d0 * ZO(IK)/RL(IK)) 
          DELU(IK) = (USTAR(IK)/VKAR) * 
     *       ( log((HEIGHT+ZO(IK))/ZO(IK)) -
     *       2.0d0 *log(0.5d0*(1.+XM)) + 2.0d0 *log(0.5d0*(1.d0+XM0)) -
     *       log(0.5d0*(1.d0+XM**2)) + log(0.5d0*(1.d0+XM0**2)) +
     *      2.0d0 * ATAN(XM) - 2.0d0 * ATAN(XM0)  )
          DELTHE(IK) = (THETAS(IK)/VKAR) * 
     *       ( log((HEIGHT+ZO(IK))/ZO(IK)) -
     *   2.0d0*log(0.5d0*(1.0d0+XMH)) + 2.0d0*log(0.5d0*(1.0d0+XMH0)) )
          DELQS0(IK) = (QSTAR(IK)/VKAR) * 
     *       ( log((HEIGHT+ZO(IK))/ZO(IK)) -
     *   2.0d0*log(0.5d0*(1.0d0+XMH)) + 2.0d0*log(0.5d0*(1.0d0+XMH0)) )
        ELSE
C
C      when winds are light or instability is extreme
          DELTHE(IK)=0.5*(THETA1(IK)-THETA0(IK))
          DELQS0(IK)=0.5*(max(QG(IK),0.0d0)-QS0(IK))
          DELU(IK)=0.5*VMOD(IK)
        ENDIF
C
      ENDIF
C
  100 CONTINUE
C
      RETURN
      END
      SUBROUTINE SCREENC(ZO,VMOD,HEIGHT,QG,TG,PSS,
     *           USTAR,THETAS,QSTAR,THETA0,QS0,ILONGL,
     *           PSC,RIBB,DELU,DELTHE,DELQS0)
C
C     THE corrector phase - of computation of screen
C        Temperatures
C      As per Hess&mcavaney, 1995.
C
      implicit none
      real*8 grav, vkar, cp, rgas, roncp
      PARAMETER (GRAV=9.80616,VKAR=0.4)
      PARAMETER (CP=1.00464d3,RGAS=287.04,RONCP=RGAS/CP)
C
C     INPUT
C     ZO - roughness length
C     VMOD - wind magnitude at lowest model level
C     HEIGHT - height at which output required
C     QG  - mixing ratio at lowest model level
C     TG  - temperature at lowest model level
C     PSS - surface pressure
C     USTAR - scaled friction velocity
C     THETAS - scaling for potential temperature
C     QSTAR - scaling for mixing ratio
C     THETA0 - potential temperature at surface
C     QS0    - mixing ratio ai surface
C     ILONGL - number of points
C
C
      integer ilongl
      real*8 ZO(ILONGL),QG(ILONGL),TG(ILONGL)
      real*8 PSS(ILONGL)
      real*8 VMOD(ILONGL)
      real*8 USTAR(ILONGL),THETAS(ILONGL),QSTAR(ILONGL)
      real*8 THETA0(ILONGL),QS0(ILONGL)
      real*8 HEIGHT

C     OUTPUT
C     PSC - pressure at level HEIGHT (diagnostic)
C     RIBB - Richardson muber at HEIGHT (iagnostic)
C     DELU
C     DELTHE
C     DELQS0
      real*8 DELU(ILONGL),DELTHE(ILONGL),DELQS0(ILONGL)
      real*8 PSC(ILONGL),RIBB(ILONGL)

c     working variables
      integer ik
      real*8 qz, qs0z, trm1, trm2, theta1, rib, af, fmu, fmtq
C
      DO 100 IK=1,ILONGL
C
      QZ = max(0.0d0,QG(IK))
      QS0Z = max(0.0d0,QS0(IK))
      TRM1 = 1.0d0 + 0.608 *QS0Z
      TRM2 = 1.0d0 + 0.608 * QZ
      PSC(IK) = EXP( log(PSS(IK)) -
     *      GRAV * HEIGHT / ( RGAS * TG(IK) *
     *     (1+.608*QZ) ) )
      THETA1 = TG(IK) *(100000./PSC(IK))**RONCP
C     Richardson number - Eqn 7 of H&M
      RIB =(GRAV*HEIGHT)/(VMOD(IK)**2) * (1.-THETA0(IK)/THETA1 *
     *               (1.0d0 - TRM1/TRM2) )
C
      AF=(VKAR/log((HEIGHT+ZO(IK))/ZO(IK)))**2
C
C     the following functions are the Louis transfer faunctions as used by BMRC
C     each model needs to use same form as in surface flux calculation
      IF(RIB.GE.0.)THEN
 	   RIB=min(20.,RIB)
 	   FMU = 1.0d0/(1.0d0+10.*RIB*(1.0d0+8.0d0*RIB))
	   FMTQ = FMU
      ELSE
           FMU = 1.0d0 - 10.0d0 * RIB / ( 1. + AF*75.*SQRT(-RIB *
     *                               (HEIGHT+ZO(IK))/ZO(IK)) )
           FMTQ = 1.0d0 - 15.0d0 * RIB / ( 1.d0 + AF*75.d0*SQRT(-RIB *
     *                               (HEIGHT+ZO(IK))/ZO(IK)) )
      ENDIF
C
      RIBB(IK)=RIB
C      Equations 11-13 of H&M
      DELU(IK) = USTAR(IK)/SQRT(AF*FMU)
      DELTHE(IK)=THETAS(IK)*(SQRT(FMU/AF)/FMTQ)
      DELQS0(IK)=QSTAR(IK)*(SQRT(FMU/AF)/FMTQ)
C
  100 CONTINUE
C
      RETURN
      END
