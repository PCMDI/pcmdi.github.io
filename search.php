ubtitle: Columns template
description: Test description
---

{% extends "base.j2" %}

{% block container %}

<h2> Search </h2>

{% raw %}
<?php include_once("media/classes/searcher.php"); ?>
{% endraw %}

{% endblock container %}
