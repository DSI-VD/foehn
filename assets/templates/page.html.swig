{% extends "base.html.swig" %}

{% block content %}
  {% set path = '../components/pages/' + name + '.html.swig' %}
  <div id="page-wrapper">
    {{ contents|raw }}
  </div>
{% endblock %}

{% block javascripts %}
{% endblock %}
