---
title: Actualite
name: actualite
collection: pages
styleguide: false
layout: page.html.swig
breadcrumb:
  -
    name: 'vd.ch'
    href: '../accueil/'
  -
    name: 'Actualités'
    href: '../actualites/'
  -
    name: ' '
    href: '#'
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1 aria-hidden="true">La Journée Oser tous les métiers élargit son offre</h1>
  </div>
</div>

<main class="container" id="main">
  <h1 class="sr-only">La Journée Oser tous les métiers élargit son offre</h1>
  <figure class="figure">
    <img src="http://www.vd.ch/uploads/_processed_/5/1/csm_JOM2015_fb2430dc27.jpg" class="img-fluid figure-img" alt="Description de l'image">
    <figcaption class="figure-caption">La #jom permet de découvrir des secteurs professionnels traditionnellement associés au sexe opposé.</figcaption>
  </figure>

  <p class="lead">
    Cette année, deux nouveaux ateliers complètent l’offre de la traditionnelle Journée oser tous les métiers (#jom) du 10 novembre: « Métiers techniques» pour les filles et « Enseignant de classes 1 et 2P (enfantine) » pour les garçons.
  </p>
  <p>
    Explorer de nouveaux univers professionnels au-delà des secteurs traditionnellement féminins ou masculins, c'est ce que proposera la Journée Oser tous les métiers le jeudi 10 novembre prochain. Les filles accompagneront un homme dans sa journée de travail, et les garçons une femme. En plus de cette mise en situation professionnelle, les écoliers auront la possibilité de participer aux ateliers organisés par le BEFH.
  </p>
  <p>
    Avec 625 places disponibles, ces ateliers permettront aux filles de découvrir les métiers d’ingénieure, d’informaticienne ou de s’initier à la vie politique au Parlement des filles.
  </p>
  <p>
    <a href="http://www.bicweb.vd.ch/frame.aspx?pPage=/communique.aspx?pObjectID=601487">Communiqué du 1er novembre 2016</a>
  </p>

</main>

<div class="container">
  <h3>Partager cette actualité</h3>
  {% include "../molecules/social-icons.html.swig" %}
</div>

{% include "../organisms/footer.html.swig" %}
