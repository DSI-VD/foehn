---
title: Actualites
name: actualites
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Actualités</h1>
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

<div class="container">

  <div class="row">

    {% set newsCount = 8 %}
    {% set newsCountAsArray = Array(newsCount) %}

    {% for x, y in newsCountAsArray %}
    <div class="col-md-6">
    {% include "../molecules/teaser.html.swig" %}
    </div>
    {% endfor %}

  </div>

    <nav class="text-xs-center mt-3">
      <p class="mb-0">
        Page 1 de 10
      </p>
      <ul class="list-inline">
        <li class="list-inline-item"><a href="#" class="btn btn-primary">Page suivante</a></li>
      </ul>
    </nav>

</div>

<footer class="footer bg-inverse p-y-3 mt-3">
  <div class="container">
    <p>footer here</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos illum nihil, dicta dolor nemo modi hic ut corporis. Vel dignissimos nam suscipit ratione quam ad omnis, natus doloribus veniam maiores.</p>
  </div>
</footer>
