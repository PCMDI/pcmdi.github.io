
/* EMAILS
 *******************************************************************************************/

function init_emails() {
    $('span.email').each(function(i){
        var email = $(this).text().replace(/\-dot\-/g, '.').replace(/\-at\-/g, '@');
        $(this).replaceWith('<a href="mailto:' + email + '">' + email + '</a>');
    });
}

/* TOGGLES
 *******************************************************************************************/

function init_toggles() {
    $('.toggles .parent').each(function(){
        if (!$(this).hasClass('expand')) {
            $(this).next().hide();
        }
    });

    $('.toggles .parent a, .toggles a.parent').click(function(e){
        e.stopPropagation();
        return true;
    });
    $('.toggles .parent').click(function(e){
        if ($(this).hasClass('expand')) {
            $(this).next().hide('fast');
            $(this).removeClass('expand');
        } else {
            $(this).next().show('fast');
            $(this).addClass('expand');
        }
        return false;
    });
    
    $('.toggles .parent').hover(function(e){
        $(this).addClass('hover');
        
    },function(e){
        $(this).removeClass('hover');
    });
    
    var $sc = $('#content .section-collapse');
    if ($sc.length > 0) {    
        $sc.children(':last').hide();

        $sc.children(':first').append(' [ <a href="">expand<\/a> ]');
        $sc.children(':last').append('<p>[ <a href="">collapse<\/a> ]<\/p>');
        $sc.children(':first').children('a:last').click(function(e){
            if ($(this).parent().next().is(':visible')) {
                $(this).parent().next().hide('fast');
                $(this).text('expand');

            } else {
                $(this).parent().next().show('fast');
                $(this).text('collapse');
            }

            return false;
        });

        $sc.children(':last').children('p:last').children('a:last').click(function(e){
            $(this).parent().parent().hide('fast');
            $(this).parent().parent().prev().children('a:last').text('expand');

            return false;
        });
    }
}

/* TREES
 *******************************************************************************************/

function init_trees() {
    $('.tree > li').click(function(){
        if ($(this).hasClass('closed')) {
            $(this).removeClass('closed');
        } else {
            $(this).addClass('closed');
        }
    });
    
    $('.tree > li').hover(function(e){
        $(this).addClass('hover');
        
    },function(e){
        $(this).removeClass('hover');
    });
}

/* TABLES
 *******************************************************************************************/

function init_tablesorter() {
    if ('tablesorter' in $.fn) {
    //(function($) { <= This is for avoiding name conflicts if jQuery not defined to use $ (not applicable here).
        $.tablesorter.addWidget({
            id: 'cookie',
            format: function(table) {
                var sortList = table.config.sortList;
                if (sortList.length > 0) {
                    $.cookie($(table).attr('id'), sortList);
                }
            }
        });
    	
    	$.tablesorter.addParser({
            id: 'ds',
            is: function(s) { return false; },
            format: function(s) {
                return s.replace(/^\d+/,'');
            },
            type: 'text'
        });
    //})(jQuery);
    }
}

function init_tables(conf, table) {
    if (!conf) conf = { };
    
    if (!('widgets'   		in conf)) conf['widgets']   = [ 'cookie', 'zebra' ];
    if (!('cssHeader' 		in conf)) conf['cssHeader'] = 'sort';
    if (!('cssDesc'   		in conf)) conf['cssDesc']   = 'sort-down';
    if (!('cssAsc'    		in conf)) conf['cssAsc']    = 'sort-up';
	if (!('pageSize'  		in conf)) conf['pageSize']  = '10';
	if (!('pagePosition'  	in conf)) conf['pagePosition']  = '1';

	table = (!table) ? '#content table.sortable' : table;

	if (!('collapse'  in conf)) conf['collapse']  = { collapse: true };
	if (!('pager'     in conf)) conf['pager']     = { container: $('#pager'), positionFixed: false, 
													  size: conf['pageSize'], page: conf['pagePosition'] };

    var $table = $(table);
    if ('collapsible' in $.fn) {
        $table.collapsible('td.collapsible', conf['collapse']);
    }
    if ('tablesorter' in $.fn) {
        $table.each(function(){
            var cksort = $.cookie($(this).attr('id'));
            if (cksort) {
                cksort = cksort.split(',');
                if (cksort.length == 0) {
                    cksort = [0,0];
                }
                conf['sortList'] = [ cksort ];
            } else if (!('sortList' in conf)) {
                conf['sortList'] = [ [0,0] ];
            }
            $(this).tablesorter(conf);

            var over = function(){ $(this).addClass('hover') };
        	var out  = function(){ $(this).removeClass('hover') };

            $(this).find('tr').hover(over,out);
        });
    }
    if ('tablesorterPager' in $.fn) {
        $table.tablesorterPager(conf['pager']);
    }
	
	return;
    
    $('#content table.sortable').tablesorter(conf).bind('sortEnd', function(){
        
        var i = 0;
        $('#content table.sortable:visible tr:visible').each(function(){
            if ($(this).hasClass('expand-child')) return 1; // Because collapsible rows ought not to be included.
            if ((i++)%2 == 0) $(this).removeClass('odd').addClass('even');
            else $(this).removeClass('even').addClass('odd');
        });
        
        /* Does not work when rows are hidden.
        $('#content table.sortable tr:odd').removeClass('even').addClass('odd');
        $('#content table.sortable tr:even').removeClass('odd').addClass('even');
        */
    });
    

}
 
 /* TABS
  *******************************************************************************************/

function init_tabs(uid) {
    $('#content .navigator a').click(function(){
        $('#content .navigator li').removeClass('selected');
        $('#content .sections div').css('display', 'none');
        
        var href = $(this).attr('href');
        
        $(href).css('display', 'block');
        $(this).parent().addClass('selected');
        
        if (uid) {
            if ($.cookie(uid) != href) {
                $.cookie(uid, href); // Session cookie.
            }
        }
        
        return false;
    });
    
    var deftab = false;
    $('#content .navigator a').each(function(){
        if ($(this).hasClass('default')) {
            $(this).click();
            deftab = true;
            return false;
        }
    });
    
    if (uid && !deftab) {
        if ($.cookie(uid)) {
            var a = $('#content .navigator li a[href=' + $.cookie(uid) + ']');
            if (a.length > 0) {
                deftab = true;
                a.click();
            }
        }
        if (!deftab) {
            /* This was a valiant effort, but to work properly, init_tables will have to be done
             * before init_tabs, so we can tell which tables are empty before determining which
             * tab to show.
            var tables = $('#content .sections div > table');
            if (tables.length > 0) {

                 
                tables.each(function(){
                    var hidden = $(this).find('tbody tr.even').length;
                    var all = $(this).find('tbody tr').length;
                    if (hidden == all) return;
                    var tab = $(this).parent().attr('id');
                    $('#content .navigator li a[href=#' + tab +']').click();
                    return false;
                });
                
            } else {
            */
                $('#content .navigator li:first-child a').click();
            //}
        }
    }
}

/* TABLE FILTERING
 *******************************************************************************************/

function init_table_filtering(uid) {
    
    var getCodes = function(){
        var codes = [ ];
        $('#sidebar ul.tbl-filter > li').each(function(){
            if ($(this).children('input[type=checkbox]').attr('checked')) {
                codes.push( $(this).attr('id') );
            }
        });
        return codes;
    };
    
    var saveCodes = function(val) {
        $.cookie(uid, val);
    };
    
    var loadCodes = function() {
        var data = $.cookie(uid);
        if (data) {
            return data.split(',');
        }
        return data;
    };
    
    var selectAll = function() {
        saveCodes(null);

        $('#sidebar ul.tbl-filter input[type=checkbox]').attr('checked', true);
        showDescriptions();
        
        $('table.sortable tr.hide').removeClass('hide');
        resetRowColoring();
    };
    
    var resetRowColoring = function() {
        var i = 0;
        $('table.sortable:visible tr:visible').each(function(){
            if ((i++)%2 == 0) $(this).removeClass('odd').addClass('even');
            else $(this).removeClass('even').addClass('odd');
        });
    }
    
    var showDescriptions = function() {
        /* The old way that Rolanda did not like.
        $('#sidebar ul.tbl-filter > p').each(function(){
            if ($(this).prev().children('input[type=checkbox]').attr('checked')) {
                if ($(this).text().search(/[^\s]+/) >= 0) {
                    $(this).slideDown('normal');
                    return;
                }
            }
            $(this).slideUp('normal');
        });
        */
    };
    
    var filter = function(codes) {
        $('table.sortable:visible tbody tr').addClass('hide');
        
        var codes = (codes) ? codes : getCodes();
        for (var c=0; c<codes.length; c++) {
            var code = codes[c];
            $('table.sortable:visible td > .' + code).parent().parent().removeClass('hide');
        }
        
        resetRowColoring();
    };
    
    $('#sidebar ul.tbl-filter > li > a').click(function(){
        var chbox = $(this).prev();
        var li = $(this).parent();
        
        $('#sidebar li[id!=' + li.attr('id') + '] input[type=checkbox]').attr('checked', false);
        chbox.attr('checked', true).trigger('change');
        
        $('#sidebar li[id!=' + li.attr('id') + '] + p:visible').slideUp('normal');
        li.next('p').slideToggle('normal');

        return false;
    });
    
    var mcount = $('#sidebar ul.tbl-filter input[type=checkbox]').change(function(){
        saveCodes(getCodes());
        showDescriptions();
        filter();
    }).length;
    
    $('.navigator a').click(function(){
        filter();
    });
    
    /* Select ALL.
     */
    $('#sidebar .controls a:first-child').click(function(){
        selectAll();
        return false;
    });
    
    /* Toggle.
     */
    $('#sidebar .controls a:last-child').click(function(){
        var codes = [ ];
        $('#sidebar ul > li > input[type=checkbox]').each(function(){
            $(this).attr('checked', !$(this).attr('checked'));
            if ($(this).attr('checked')) {
                codes.push( $(this).parent().attr('id') );
            }
        });
        saveCodes(codes);
        showDescriptions();
        filter(codes);
        return false;
    });
    
    if ($('#sidebar ul.tbl-filter input[checked=true]').length > 0) {
        showDescriptions();
        filter();
        
    } else {
    
        var codes = loadCodes();
        if (codes) {
            if (codes.length == mcount) {
                selectAll();
            
            } else {
                for (var c=0; c<codes.length; c++) {
                    $('li#' + codes[c] + ' input').attr('checked', true);
                }
                showDescriptions();
            }
            filter(codes);
        
        } else {
            $('#sidebar ul.tbl-filter input[type=checkbox]').attr('checked', true);
            showDescriptions();
        }
    }
}

/* MAIN MENU
 *******************************************************************************************/

function init_menu() {
    $('#nav-main .upper > div').mouseover(function(e){
        var tab = $(this);
        /* Not anymore.
        if (tab.hasClass('sel')) return;
        */
        
        tab.siblings().removeClass('hover');
        tab.addClass('hover');

        $('#nav-main .lower > div').removeClass('hover');
        
        var name = tab.attr('class').split(' ')[0];
        var menu = $('#nav-main .lower > .' + name);
        
        if (menu.length == 0) return;
        
        menu.addClass('hover');

        var t_pos    = tab.position();
        var t_width  = tab.width();
        var t_height = tab.height();
        
        var bar_width = tab.parent().width();
        
        var m_width = menu.width();
        
        var m_bw, m_left, m_top;
        
        m_bw = menu.css('border-left-width');
        m_bw = parseInt(m_bw.substring(0,m_bw.indexOf('px')));
        
        m_top = t_pos.top + t_height;
        m_left = t_pos.left - m_bw;
        
        if (m_width + t_pos.left > bar_width) {
            m_left -= (m_width - t_width);
            menu.addClass('right');
        } else {
            menu.removeClass('right');
        }

        menu.css('top', m_top + 'px').css('left', m_left + 'px');
    });
    
    $('#nav-main .upper > div').mouseout(function(e){
        var pos = $(this).offset();
        var width = $(this).width();
        var height = $(this).height();
        
        /* If no menu exists for this tab, then we need to turn hover off when mouse moves
         * below the tab.
         */
        if ($('#nav-main .lower > div.' + $(this).attr('class').split(' ')[0]).length > 0) {
            if (e.pageY > pos.top && e.pageX > pos.left && e.pageX < (pos.left + width)) return;
        } else {
            if (e.pageY > pos.top && e.pageY < (pos.top + height) && e.pageX > pos.left && e.pageX < (pos.left + width)) return;
        }

        $('#nav-main .upper > div').removeClass('hover');
        $('#nav-main .lower > div').removeClass('hover');
    });

    $('#nav-main .lower > div').mouseout(function(e){
        var pos = $(this).offset();
        var width = $(this).width();
        var height = $(this).height();
        
        if (e.pageX > pos.left && e.pageX < (pos.left + width) &&
            e.pageY > pos.top && e.pageY < (pos.top + height)) return;

        $('#nav-main .upper > div').removeClass('hover');
        $('#nav-main .lower > div').removeClass('hover');
    });
}

/* FEEDBACK
 *******************************************************************************************/

function init_feedback() {
    $('#feedback-form a.button').click(function(){
        var email = $('#fb-email');
        var text = $('#fb-text');
        if (email.val() == email.data('prompt') || text.val() == text.data('prompt')) {
            alert('Email and Comments Required');
            return false;
        }

        $('#feedback-form input, #feedback-form textarea, #feedback-form a.button').attr('disabled', 'disabled');
        $('#feedback-form .loading').show('normal');

        var url = '/lib/feedback';
        var host = window.location.hostname;
        if (host != 'www.arm.gov' && host != 'dev.www.arm.gov') {
            url = 'http://www.arm.gov' + url;
        }

        $.get(url, { sender: email.val(), comment: text.val(), url: document.URL, phone: $('#fb-phone').val() }, function(response){
            $('#feedback-form').append(response);
            $('#feedback-form input, #feedback-form textarea, #feedback-form a.button').removeAttr('disabled');
            $('#feedback-form .loading').hide('normal');
            if ($('#feedback-form .error').length == 0) {
                $('#feedback-form input, #feedback-form textarea').val('').blur();
            }
        });
        return false;
    });

    $('#faq-form a.button').click(function(){
        var email = $('#fb-email');
        var question = $('#fb-question');
        if (email.val() == email.data('prompt') || question.val() == question.data('prompt')) {
            alert('Email and Question Required');
            return false;
        }
        
        $('#faq-form input, #faq-form textarea, #faq-form a.button').attr('disabled', 'disabled');
        $('#faq-form .loading').show('normal');
        
        var url = '/lib/feedback-faq';
        var host = window.location.hostname;
        if (host != 'www.arm.gov' && host != 'dev.www.arm.gov') {
            url = 'http://www.arm.gov' + url;
        }
        
        $.get(url, { sender: email.val(), question: question.val() }, function(response){
            $('#faq-form').append(response);
            $('#faq-form input, #faq-form textarea, #faq-form a.button').removeAttr('disabled');
            $('#faq-form .loading').hide('normal');
            if ($('#faq-form .error').length == 0) {
                $('#faq-form input, #faq-form textarea').val('').blur();
            }
        });
        return false;
    });
}

/* PROMPTING INPUTS
 *******************************************************************************************/

function init_prompting_inputs() {
    $('input[type=text].prompt').each(function(){
        var def = $(this).attr('title');
        $(this).data('prompt', def).addClass('default');
        $(this).val(def);
    })
    .focus(function(e){
        if ($(this).val() == $(this).data('prompt')) {
            $(this).val('').removeClass('default');
        }
    })
    .blur(function(e){
        if ($(this).val() == '') {
            $(this).val($(this).data('prompt')).addClass('default');
        }
    });
    
    $('textarea.prompt').each(function(){
        var def = $(this).attr('title');
        $(this).data('prompt', def).addClass('default');
        $(this).val(def);
    })
    .focus(function(e){
        if ($(this).val() == $(this).data('prompt')) {
            $(this).val('').removeClass('default');
        }
    })
    .blur(function(e){
        if ($(this).val() == '') {
            $(this).val($(this).data('prompt')).addClass('default');
        }
    });
}


$(document).ready(function(){
    /* Let's auto-fill the space if #sidebar is missing, just for fun.
     */
    if ($('#sidebar').length == 0 && $('#content').length > 0 && !$('#content').hasClass('full')) {
        $('#content').addClass('full');
    }
    
    /* Let's use the jQuery Light Box plugin instead of thickbox, where we can.
     */
    if ($.fn.lightBox) {
        $('a.thickbox').lightBox();
    }
    
    init_menu();
    
    init_feedback();
    init_toggles();
    init_emails();
    init_trees();
    init_prompting_inputs();
    
    init_tablesorter();

    /* Force re-download of PDFs to avoid caching.
     */
    $("a[href$='.pdf']").each(function(){
        var url = $(this).attr('href');
        $(this).attr('href', url + '?id=' + Math.floor(Math.random()*101));
    });
    
    if (!Array.prototype.indexOf) {
        Array.prototype.indexOf = function (obj, fromIndex) {
            if (fromIndex == null) {
                fromIndex = 0;
            } else if (fromIndex < 0) {
                fromIndex = Math.max(0, this.length + fromIndex);
            }
            for (var i = fromIndex, j = this.length; i < j; i++) {
                if (this[i] === obj) return i;
            }
            return -1;
        };
    }
    
    /* Special case for links submitting parent form.
     */
    $('a.form-submit').click(function(){
        var form = $(this).parents('form').eq(0);
        if (form) form.submit();
        return false;
    });

});

function init_dirty_forms(dirty) {
    window.onbeforeunload = function() {
      var is_dirty = dirty();
      if(is_dirty) return 'Leaving this page will cause any unsaved data to be lost.';
    };
}
