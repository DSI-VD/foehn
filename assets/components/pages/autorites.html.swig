---
title: Autorites
name: autorites
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray">
  <div class="container">
    <div class="row">
      <div class="col-sm-8">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Autorites</h1>
      </div>
      <div class="col-sm-4">
        <button type="button" class="btn btn-success btn-block vd-btn-chevron-r mt-2">Commander un extrait du registre des poursuites</button>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <ul>
    <li class="h3"><a href="#">Grand Conseil</a></li>
    <li class="h3"><a href="#">Conseil d'Etat</a></li>
    <li class="h3"><a href="#">Ordre judiciaires</a></li>
  </ul>

  <hr class="vd-separator-gray-bars">

  <h3>Chancelelerie d'Etat</h3>
  <ul>
    <li><a href="#">BIC</a></li>
    <li><a href="#">Archives cantonales</a></li>
  </ul>

  <h3>Préféctures</h3>
  <ul>
    <li><a href="#">Broye-Vully</a></li>
    <li><a href="#">Gros-de-Vaud</a></li>
    <li><a href="#">Jura-nord-vaudois</a></li>
    <li><a href="#">Lausanne</a></li>
    <li><a href="#">Lavaux-Oron</a></li>
    <li><a href="#">Morges</a></li>
    <li><a href="#">Nyon</a></li>
    <li><a href="#">Ouest Lausannois</a></li>
  </ul>

  <hr class="vd-separator-gray-bars">

</div>

<footer class="footer bg-inverse p-y-3 mt-3">
  <div class="container">
    <p>footer here</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos illum nihil, dicta dolor nemo modi hic ut corporis. Vel dignissimos nam suscipit ratione quam ad omnis, natus doloribus veniam maiores.</p>
  </div>
</footer>
