---
title: FAQ
name: faq
collection: organisms
wrapper: container
notes: |
---
<h2>Foire aux questions</h2>

<div class="vd-bg-pattern-bars-gray clearfix my-1 py-2 px-1">
{% include "../atoms/search-form.html.swig" with { variant: 'regular' } %}
</div>

{% set faqCount = 10 %}
{% set faqCountAsArray = Array(faqCount) %}

<h3>Questions</h3>

<ul class="vd-list-links">
  {% for x, y in faqCountAsArray %}
    <li><a href="faq-{{ x }}">Titre de la question {{ x }}</a></li>
  {% endfor %}
</ul>

<h3 class="sr-only">Réponses</h3>

{% for x, y in faqCountAsArray %}
  {% include "../molecules/faq-item.html.swig" with { faq_id:"{{ loop.index }}" } %}
{% endfor %}
