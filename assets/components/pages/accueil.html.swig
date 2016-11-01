---
title: Accueil
name: accueil
collection: pages
styleguide: false
layout: page.html.swig
---

<div class="container">
  <h1 class="sr-only">Site officiel de l'&Eacute;tat de Vaud</h1>
</div><!-- container -->

<div class="container">
  <div class="row">

    <div class="col-md-8">

      <section>
        <h2 class="vd-section-title">Actualités</h2>

        {% include "assets/components/molecules/teaser.html.swig" %}

        {% set newsCount = 4 %}
        {% set newsCountAsArray = Array(newsCount) %}

        {% for x, y in newsCountAsArray %}
        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Lorem ipsum dolor sit amet</a></h3>
          <div class="vd-teaser-content">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>
        {% endfor %}

      </section>

    </div><!-- /.col-md-8 -->

    <div class="col-md-4">

    <section class="mb-3">
      <h2 class="vd-section-title">Twitter</h2>

      <article>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>

      <article>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>

      <article>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>
    </section>

    <section>
      <h2 class="vd-section-title">Agenda / événements</h2>

      <article>
        <h3><span class="tag tag-default">3</span> mars 2017</h3>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum totam quam iusto.</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>

      <article>
        <h3><span class="tag tag-default">3</span> mars 2017</h3>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum totam quam iusto.</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>

      <article>
        <h3><span class="tag tag-default">3</span> mars 2017</h3>
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum totam quam iusto.</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>
    </section>

    </div><!-- /.col-md-4 -->

  </div><!--- /.row -->
</div><!--- /.container -->

<hr class="vd-separator vd-separator-gray-bars vd-separator-wide mt-3 mb-3">

<div class="container">
  <section>
    <h2 class="vd-section-title">Autorités</h2>

    <div class="vd-btn-tiles mb-1">
      <a href="#" class="btn">Organigramme</a>
      <a href="#" class="btn">Conseil d'État</a>
      <a href="#" class="btn">Grand Conseil</a>
      <a href="#" class="btn">Ordre Judiciaire</a>
    </div>

    <p>
      <a href="#" class="btn btn-primary vd-btn-chevron-r">Toutes les autorités</a>
    </p>

  </section>
</div>

<footer class="footer bg-inverse mt-3">
  <div class="container">
    <p>footer here</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos illum nihil, dicta dolor nemo modi hic ut corporis. Vel dignissimos nam suscipit ratione quam ad omnis, natus doloribus veniam maiores.</p>
  </div>
</footer>
