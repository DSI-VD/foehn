---
title: Actualites
name: actualites
collection: pages
styleguide: false
layout: page.html.swig
breadcrumb:
  -
    name: 'vd.ch'
    href: '../accueil/'
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1 aria-hidden="true">Actualités</h1>
  </div>
</div>

<div class="vd-bg-pattern-bars-gray clearfix mt-1 py-2">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        {% include "../atoms/search-form.html.swig" with { variant: 'regular' } %}
      </div>
    </div>
  </div>
</div>

<main class="container mt-2" id="main">
  <h1 class="sr-only">Actualités</h1>

  {% set newsCount = 10 %}
  {% set newsCountAsArray = Array(newsCount) %}

  <div class="row">
    {% for x, y in newsCountAsArray %}
      {% include "../molecules/teaser.html.swig" with {teaser_wrapper: 'col-md-6'} %}
    {% endfor %}
  </div>

  {% include "../molecules/nav-pagination.html.swig" %}

</main>

{% include "../organisms/footer.html.swig" %}
