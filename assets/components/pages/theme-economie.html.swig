---
title: Economie
name: theme-economie
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Economie</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">

    <div class="col-md-8">
      <h2>3 prestations</h2>
      <div class="vd-bg-pattern-green p-1">
        {% include "../atoms/list-boxed.html.swig" %}
      </div>

    </div>

    <div class="col-md-4">
      <h2>Office des poursuites de Lausanne</h2>
      <p>Avenue de Longemalle 1 <br>1020 Renens</p>

      <ul class="vd-list-links">
        <li><a href="#0">info.spi@vd.ch</a></li>
        <li><a href="#0">voir sur la carte</a></li>
      </ul>

      <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r mt-2">Contacter l'office</a>

      <h2 class="mt-3 vd-section-title">Autres prestations liées</h2>
      <ul class="vd-list-links">
        <li><a href="#0">Lien 1</a></li>
        <li><a href="#0">Lien 2</a></li>
        <li><a href="#0">Lien 3</a></li>
      </ul>
    </div>

  </div>
</div>

<footer class="footer bg-inverse p-y-3 mt-3">
  <div class="container">
    <p>footer here</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos illum nihil, dicta dolor nemo modi hic ut corporis. Vel dignissimos nam suscipit ratione quam ad omnis, natus doloribus veniam maiores.</p>
  </div>
</footer>
