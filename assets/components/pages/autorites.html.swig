---
title: Autorites
name: autorites
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
    <h1 aria-hidden="true">Autorites</h1>
  </div>
</div>

<main class="container" id="main">
  <h1 class="sr-only">Autorites</h1>

  <div class="vd-btn-tiles mb-1 mt-3">
    <a href="#" class="btn">Conseil d'État</a>
    <a href="#" class="btn">Grand Conseil</a>
    <a href="../ordre-judiciaire-vaudois" class="btn">Ordre Judiciaire</a>
  </div>

  <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

  <div class="row">
    <div class="col-md-4">
      <h2>Chancellerie d'Etat</h2>
    </div>
    <div class="col-md-8">
      <ul class="h3 list-unstyled">
        <li><a href="#">BIC</a></li>
        <li><a href="#">Préfectures</a>
          <ul class="list-unstyled pl-1">
            <li><a href="#">Broye-Vully</a></li>
            <li><a href="#">Gros-de-Vaud</a></li>
            <li><a href="#">Jura-nord-vaudois</a></li>
            <li><a href="#">Lausanne</a></li>
            <li><a href="#">Lavaux-Oron</a></li>
            <li><a href="#">Morges</a></li>
            <li><a href="#">Nyon</a></li>
            <li><a href="#">Ouest Lausannois</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>

  <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

  <!--ul>
    <li><span class="h3">DTE</span><br>Direction générale de l'environnement
      <ul>
        <li><span class="h3">DGE</span><br>Direction générale de l'environnement
          <ul>
            <li><span class="h3">DIREN</span><br>Direction de l'énergie</li>
            <li><span class="h3">DIREV</span><br>Direction de l'environnement industriel, urbain et rural</li>
            <li><span class="h3">DIRNA</span><br>Direction des ressources et du patrimoine naturels</li>
          </ul>
        </li>
        <li><span class="h3">SAN</span><br>Service des automobiles et de la navigation</li>
        <li><span class="h3">Jura-nord-vaudois</span></li>
        <li><span class="h3">Lausanne</span></li>
        <li><span class="h3">Lavaux-Oron</span></li>
        <li><span class="h3">Morges</span></li>
        <li><span class="h3">Nyon</span></li>
        <li><span class="h3">Ouest Lausannois</span></li>
      </ul>
    </li>
  </ul -->

  <div class="row">
    <div class="col-md-4">
      <h2>Départements</h2>
    </div>
    <div class="col-md-8">
      <ul class="list-unstyled">
        <li>
          <span class="h3"><a href="#">DTE</a></span> <br>Direction générale de l'environnement
        </li>

        <li>
          <span class="h3"><a href="#">DFJC</a></span> <br>Département de la formation, de la jeunesse et de la culture
        </li>

        <li>
          <span class="h3"><a href="#">DIS</a></span> <br>Département des institutions et de la sécurité
        </li>

        <li>
          <span class="h3"><a href="#">DSAS</a></span> <br>Département de la santé et de l'action social
        </li>

        <li>
          <span class="h3"><a href="#">DECS</a></span> <br>Département de l'économie et du sport
        </li>

        <li>
          <span class="h3"><a href="#">DIRH</a></span> <br>Département des finances et des relations extérieurs
        </li>
      </ul>
    </div>
  </div>


  <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

  <div class="row">
    <div class="col-md-4">
      <h2>Ministère public</h2>
    </div>
    <div class="col-md-8">
      <ul class="h3 list-unstyled">
        <li><a href="#">Division contrôle affaire spéciales mineurs</a></li>
        <li><a href="#">Division affaires économiques</a></li>
        <li><a href="#">MPs Lausanne</a></li>
        <li><a href="#">MPs Est Vaudois</a></li>
        <li><a href="#">MPs Nord Vaudois</a></li>
      </ul>
    </div>
  </div>

  <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

  <div class="row">
    <div class="col-md-4">
      <h2>Les autres entités</h2>
    </div>
    <div class="col-md-8">
      <ul class="h3 list-unstyled">
        <li><a href="#">Tribunal neutre</a></li>
        <li><a href="#">Contrôle cantonal des finances</a></li>
        <li><a href="#">Cour des comptes</a></li>
        <li><a href="#">Groupe Impact</a></li>
        <li><a href="#">Médiation administrative</a></li>
      </ul>
    </div>
  </div>


</main>

{% include "../organisms/footer.html.swig" %}
