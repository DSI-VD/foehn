---
title: Accueil
name: accueil
collection: pages
styleguide: false
layout: page.html.swig
---
{% include "../organisms/header.html.swig" with {'primary_opened': true}   %}

<div class="container mt-3">
  <h1 class="sr-only">Site officiel de l'&Eacute;tat de Vaud</h1>
</div>
<!-- container -->

<div class="container">
  <div class="row">

    <div class="col-md-8">

      <main id="main">
        <h2 class="vd-section-title">Actualités</h2>

        <article class="vd-teaser">
          <div class="text-xxs-center mb-2">
            <h3 class="vd-teaser-title">
              <a href="../actualite">La Journée Oser tous les métiers élargit son offre</a>
            </h3>
            <a class="vd-teaser-img" href="../actualite">
              {# make it a macro when Toolbox is less f***ed up. ANGRY #}
              <picture>
                <img style="max-width:320px;" class="img-fluid" src="http://www.vd.ch/uploads/_processed_/5/1/csm_JOM2015_fb2430dc27.jpg" alt="article image"/>
              </picture>
            </a>
          </div>
          <div class="vd-teaser-content">
            <p>Cette année, deux nouveaux ateliers complètent l’offre de la traditionnelle Journée oser tous les métiers (#jom) du 10 novembre: « Métiers techniques» pour les filles et « Enseignant de classes 1 et 2P (enfantine) » pour les garçons.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-xxs-center mb-2">
            <a href="../actualite">Attribution de la bourse arts plastiques 2016</a>
          </h3>
          <div class="vd-teaser-content">
            <p>La bourse cantonale des arts plastiques pour l’année 2016, d’une valeur de 20'000 francs, a été attribuée à Gilles Furtwängler, né en 1982 à Lausanne. Depuis dix ans, l'artiste a développé une pratique dont le matériau de base est le texte – tour
              à tour poétique, rythmé, absurde ou tendre, il se joue de la banalité des mots du quotidien et met à jour leur potentiel inexploré.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-xxs-center mb-2">
            <a href="../actualite">Remise des prix du concours CinéCivic 2016</a>
          </h3>
          <div class="vd-teaser-content">
            <p>Fiona Prieur, Marco Labagnara, Luca Moessner ont été récompensés lors de la cérémonie de remise des prix CinéCivic 2016, le 31 octobre à Genève.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-xxs-center mb-2">
            <a href="../actualite">5e Conférence nationale sur le fédéralisme</a>
          </h3>
          <div class="vd-teaser-content">
            <p>La cinquième Conférence nationale sur le fédéralisme se tiendra les 26 et 27 octobre 2017, à Montreux.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-xxs-center mb-2">
            <a href="../actualite">Anglicans et catholiques ont déposé une demande de reconnaissance</a>
          </h3>
          <div class="vd-teaser-content">
            <p>Les deux communautés ont signé la déclaration liminaire d’engagement, en vue d’une reconnaissance en tant qu’institution d’intérêt public.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

      </main>

    </div><!-- /.col-md-8 -->

    <div class="col-md-4">

      <section class="mb-3">
        <h2 class="vd-section-title">Twitter</h2>

        <article>
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>

        <article>
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>

        <article>
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste alias, numquam consequatur!</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>
      </section>

      <section>
        <h2 class="vd-section-title mt-3">Agenda / événements</h2>

        <article>
          <h3>Vaccination contre la grippe en pharmacie</h3>
          <p class="mb-0">On peut se vacciner contre la grippe dans différentes pharmacies du canton.</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>

        <article>
          <h3>Bourse de compagnonnage théâtrale</h3>
          <p class="mb-0">L’Etat de Vaud et la Ville de Lausanne mettent au concours la 8e bourse de compagnonnage théâtral.</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>

        <article>
          <h3 class="vd-numbered-title">
            <a href="#0">
              <span class="tag tag-primary">12</span>
            </a>
            <a href="#0">Novembre 2016</a>
          </h3>
          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum totam quam iusto.</p>
          <p>
            <a href="#">plus d'info</a>
          </p>
        </article>
        <hr>
      </section>

    </div><!-- /.col-md-4 -->

  </div><!-- /.row -->
</div><!-- /.container -->

<hr class="vd-separator vd-separator-gray-bars vd-separator-wide mt-3 mb-3">

<div class="container">
  <section>
    <h2 class="vd-section-title">Autorités</h2>

    <div class="vd-btn-tiles mb-1">
      <a href="#" class="btn">Organigramme</a>
      <a href="#" class="btn">Conseil d'État</a>
      <a href="#" class="btn">Grand Conseil</a>
      <a href="../ordre-judiciaire-vaudois" class="btn">Ordre Judiciaire</a>
    </div>

    <p>
      <a href="../autorites/" class="btn btn-primary vd-btn-chevron-r">Toutes les autorités</a>
    </p>

  </section>
</div>

{% include "../organisms/footer.html.swig" %}
