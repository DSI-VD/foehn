---
title: FAQ
name: faq
collection: organisms
wrapper: container
notes: |
---
<h2>Foire aux questions</h2>

{% set faqCount = 10 %}
{% set faqCountAsArray = Array(faqCount) %}

<div class="row">

</div>

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
