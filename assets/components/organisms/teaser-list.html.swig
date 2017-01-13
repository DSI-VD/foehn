---
title: Teaser list
name: teaser-list
collection: organisms
wrapper: container
notes: |
  Add a background on odd elements.
---
<div class="vd-teaser-list-striped">
{% set itemsCount = 10 %}
{% set itemsCountAsArray = Array(itemsCount) %}
{% for x, y in itemsCountAsArray %}
  {% include '../molecules/teaser-small.html.swig' with { variant: 'alt', teaser_wrapper: 'vd-teaser-list-striped-item px-1 pt-1' } %}
{% endfor %}
</div>
{% include "../molecules/nav-pagination.html.swig" %}
