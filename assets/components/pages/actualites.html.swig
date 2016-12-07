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

  <div class="row">

    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">La Journée Oser tous les métiers élargit son offre</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="http://www.vd.ch/uploads/_processed_/5/1/csm_JOM2015_fb2430dc27.jpg" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Cette année, deux nouveaux ateliers complètent l’offre de la traditionnelle Journée oser tous les métiers (#jom) du 10 novembre: « Métiers techniques» pour les filles et « Enseignant de classes 1 et 2P (enfantine) » pour les garçons.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>

    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Attribution de la bourse arts plastiques 2016</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="http://www.vd.ch/uploads/_processed_/1/3/csm_Gilles_Furtwangler_travail_2685dc1ce7.jpg" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>La bourse arts plastiques 2016 du Canton de Vaud a été attribuée à l’artiste Gilles Furtwängler.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>
  </div>

  <div class="row">
    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Remise des prix du concours CinéCivic 2016</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="http://www.vd.ch/uploads/_processed_/f/2/csm_CineCivic-T_868a645816.jpg" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Trois ex-gymnasiens de Morges ont remporté le 1er prix dans la catégorie des 15-18 ans pour leur film "Les Commis". Ils ont en outre remporté le 2e prix de la catégorie médias-cinéma.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>

    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">5e Conférence nationale sur le fédéralisme</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="http://www.vd.ch/uploads/_processed_/2/c/csm_Montreux_bc2186abe7.jpg" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>La cinquième Conférence nationale sur le fédéralisme se tiendra les 26 et 27 octobre 2017, à Montreux.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>
  </div>

  <div class="row">
    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Anglicans et catholiques ont déposé une demande de reconnaissance</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="http://www.vd.ch/uploads/_processed_/0/6/csm_anglicans_f0f466afc5.jpg" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Les deux communautés ont signé la déclaration liminaire d’engagement, en vue d’une reconnaissance en tant qu’institution d’intérêt public.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>

    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Lorem ipsum dolor sit amet</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="https://placehold.it/300x150" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>
  </div>

  <div class="row">
    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Lorem ipsum dolor sit amet</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="https://placehold.it/300x150" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>

    <article class="vd-teaser col-md-6">
      <div class="text-xxs-center mb-2">
        <h3 class="vd-teaser-title"><a href="../actualite">Lorem ipsum dolor sit amet</a></h3>
        <a class="vd-teaser-img" href="../actualite">
          <picture>
            <img class="img-fluid" src="https://placehold.it/300x150" alt="article image" />
          </picture>
        </a>
      </div>
      <div class="vd-teaser-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a href="../actualite" class="vd-teaser-meta">14.06.2016</a>
      </div>
      <hr>
    </article>
  </div>

    {% include "../molecules/nav-pagination.html.swig" %}

</main>

{% include "../organisms/footer.html.swig" %}
