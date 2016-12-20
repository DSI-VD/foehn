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
  -
    name: ' '
    href: '#'
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1 aria-hidden="true">Actualités</h1>
  </div>
</div>

<div class="container">
  <form class="form-inline mt-1 mb-3">
    <div class="form-group">
      <label class="sr-only" for="exampleInputAmount">Recherche</label>
      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Recherche">
    </div>
    <button type="submit" class="btn btn-primary"><span class="fa fa-search"></span><span class="sr-only">Rechercher</span></button>
  </form>
</div>

<main class="container" id="main">
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
