---
title: Poursuites et faillites
name: poursuites-et-faillites
collection: pages
styleguide: false
layout: page.html.swig
breadcrumb:
  -
    name: 'vd.ch'
    href: '../accueil/'
  -
    name: 'Économie'
    href: '../domaines/#economie'
  -
    name: ' '
    href: '#'
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Poursuites et faillites</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">

    <div class="col-md-8">
      <h2>3 prestations</h2>
      <div class="vd-bg-pattern-green p-1 mb-1">
        <ul class="nav vd-list-boxed">
          <li class="nav-item">
            <a class="nav-link active" href="../extrait-du-registre-des-poursuites">Obtenir un extrait du registre des poursuites pour soi-même</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../extrait-du-registre-des-poursuites/">Obtenir un extrait du registre des faillites pour soi-même</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Obtenir un extrait des registres des poursuites sur un tiers</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Obtenir un extrait des registres des faillites sur un tiers</a>
          </li>
        </ul>
      </div>

      <h2 class="vd-section-title vd-ratio-space-top">Dans ce thème</h2>
      <ul class="vd-list-links">
        <li><a href="#">Trouver l’office des poursuites ou des faillites compétent  selon le lieu de domicile du débiteur </a></li>
        <li><a href="#">Consulter le site des ventes et enchères des offices des poursuites et des faillites</a></li>
        <li><a href="#">Les différentes procédures de poursuites pour dettes et de faillite (ordinaire par voie de saisie, séquestre, etc.)</a></li>
        <li><a href="#">Questions fréquentes</a></li>
        <li><a href="#">Tous les formulaires</a></li>
        <li><a href="#">Comment faire pour obtenir la radiation d’une poursuite frappée</a></li>
        <li><a href="#">Que comprend le minimum vital</a></li>
        <li><a href="#">Office des poursuites et faillites du canton de Genève, Fribourg, Neuchâtel</a></li>
        <li><a href="../office-des-faillites">En savoir plus sur les offices des poursuites, de faillites, les bases légales, etc.</a></li>
      </ul>

    </div>

    <div class="col-md-4">
      <h2>Office des poursuites</h2>
      <p>L'office des poursuites a pour mission d’activer les poursuites, depuis leur origine et jusqu’à la distribution des dividendes et la délivrance des actes de défaut de biens.Il y en a un office par district, généralement situé dans le chef-lieu.</p>

      <ul class="vd-list-icons">
        <li><span class="fa fa-info-circle" aria-hidden="true"></span> <a href="../office-des-poursuites/">en savoir plus sur l'autorité</a></li>
      </ul>
      <p>
        <a href="../recherche-office-poursuites" class="btn btn-primary btn-sm vd-btn-chevron-r">Contacter l'office</a>
      </p>

      <h2 class="vd-ratio-space-top">Office des faillites</h2>
      <p>L'office des poursuites a pour mission principale d'administrer et de liquider les faillites prononcées par le président du tribunal d'arrondissement. Il y a quatre offices des faillites sur le canton.</p>

      <ul class="vd-list-icons">
        <li><span class="fa fa-info-circle" aria-hidden="true"></span> <a href="../office-des-faillites/">en savoir plus sur l'autorité</a></li>
      </ul>
      <p>
        <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r">Contacter l'office</a>
      </p>
    </div>

  </div>
</div>

{% include "../organisms/footer.html.swig" %}
