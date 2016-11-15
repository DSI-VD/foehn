---
title: Autorites
name: autorites
collection: pages
styleguide: false
layout: page.html.swig
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

  <ul>
    <li class="h3"><a href="#">Grand Conseil</a></li>
    <li class="h3"><a href="#">Conseil d'Etat</a></li>
    <li class="h3"><a href="../ordre-judiciaire-vaudois">Ordre judiciaires</a></li>
  </ul>

  <hr class="vd-separator vd-separator-gray-bars">

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

  <hr class="vd-separator vd-separator-gray-bars">

  <ul>
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
  </ul>

  <p>
    <span class="h3">DFJC</span> <br>Département de la fomration, de la jeunesse et de la culture
  </p>

  <p>
    <span class="h3">DIS</span> <br>Département des institutions et de la sécurité
  </p>

  <p>
    <span class="h3">DSAS</span> <br>Département de la santé et de l'action social
  </p>

  <p>
    <span class="h3">DECS</span> <br>Département de l'économie et du sport
  </p>

  <p>
    <span class="h3">DIRH</span> <br>Département des finances et des relations extérieurs
  </p>

  <hr class="vd-separator vd-separator-gray-bars">

  <h3>Ministère public</h3>
  <ul>
    <li><a href="#">Division contrôle affaire spéciales mineurs</a></li>
    <li><a href="#">Division affaires économiques</a></li>
    <li><a href="#">MPs Lausanne</a></li>
    <li><a href="#">MPs Est Vaudois</a></li>
    <li><a href="#">MPs Nord Vaudois</a></li>
  </ul>

  <hr class="vd-separator vd-separator-gray-bars">

  <h3>Les autres entités</h3>
  <ul>
    <li><a href="#">Ministère public</a></li>
    <li><a href="#">Tribunal neutre</a></li>
    <li><a href="#">Contrôle cantonal des finances</a></li>
    <li><a href="#">Cour des comptes</a></li>
    <li><a href="#">Groupe Impact</a></li>
    <li><a href="#">Médiation administrative</a></li>
  </ul>

</main>

{% include "../organisms/footer.html.swig" %}
