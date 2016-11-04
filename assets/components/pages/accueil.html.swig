---
title: Accueil
name: accueil
collection: pages
styleguide: false
layout: page.html.swig
---

<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-sm-right">

        {% include "../molecules/nav.html.swig" %}
        {% include "../molecules/nav-mobile.html.swig" %}

      </div>

    </div>
    <div class="row">
      <div class="col-md-5">
        <a href="../accueil" style="color: currentColor; text-decoration: none;">
        {% include "../molecules/logo-etat.html.swig" %}
        </a>
      </div>
      <div class="col-md-5 offset-md-2">

        {# search form (to include once the PR is merged) #}
        <form class="input-group vd-search-form my-2" action="../recherche-poursuites-et-faillites">
          <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
          <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
          <span class="input-group-btn">
            <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </span>
        </form>


      </div>
    </div>
  </div>

  <div class="vd-nav-primary">
    <div class="vd-nav-primary-toggle">
      <div class="container">
        <button type="button" class="btn btn-primary btn-sm" data-toggle="collapse" data-target="#nav-primary-container" aria-controls="nav-primary-container" aria-expanded="true">Tous les thèmes</button>
      </div>
    </div>
    <div class="collapse in clearfix" id="nav-primary-container">
      <div class="vd-nav-primary-content">
        <div class="container">
          <div class="row">
            <nav class="col-md-8" role="navigation">
              <div class="row">

                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Culture</h3>
    <p class="vd-teaser-link-text">Aides et soutiens, Ecole-Musée, Bibliothèque cantonale et universitaire, Musées cantonaux, Patrimoine vaudois, Passculture, Formations artistiques, Cinéma, Assises de la culture</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Economie</h3>
    <p class="vd-teaser-link-text">Entreprises, Marchés publics, Emploi - Chômage, Développement économique, Tourisme, Agriculture, Protection consommateur, Poursuites et faillites, Registre du commerce, Police du commerce</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Environnement</h3>
    <p class="vd-teaser-link-text">Développement durable, Faune et nature, Forêts, Air, Sols, Eaux, Energie, Bruit, Rayonnement, Produits chimiques, Déchets, Sites pollués</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Etat, Droit, Finance</h3>
    <p class="vd-teaser-link-text">Lois / Constitution, Votations et élections, Justice, Médiations, Protection des données et transparence, Curatelles et tutelles, Égalité, Impôts, Finances publiques, Affaires extérieures, Personnel de l'État, Statistiques</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Formation</h3>
    <p class="vd-teaser-link-text">Avant l'Ecole, Scolarité obligatoire, Gymnase, Apprentissage, Enseignement supérieur, Orientation, Bourses, Pédagogie spécialisée, Santé à l'école, Jours fériés et vacances scolaires, Schooling, Espace enseignant</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Mobilité</h3>
    <p class="vd-teaser-link-text">Mobilité et planification, Mobilité douce, Promotion des mobilités durables, Routes, Transports publics, Automobile, Navigation</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Santé</h3>
    <p class="vd-teaser-link-text">Actualités, Système de santé, Organisation, Lutte contre les maladies, Prévention, Dépendances, Professionnels</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Social</h3>
    <p class="vd-teaser-link-text">Informations sociales, Prestations, assurances et soutien, Vivre à domicile, EMS, Handicaps, Dettes et surendettement, Aide aux victimes et auteur-e-s de violences, Bénévolat</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Vie privée</h3>
    <p class="vd-teaser-link-text">Familles, Enfance et jeunesse, Logement, Contrôle des habitants, Etat civil, Documents d'identité, Population étrangère, Religions, Animaux, Sport, Violence domestiqu</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Sécurité</h3>
    <p class="vd-teaser-link-text">Prévention, Protection de la population, Police, Pompiers, Armée, Protection civile, Pénitentiaire, Catastrophe, Service civil</p>
  </a>


                  <a href="../domaines#Economie" class="vd-teaser-link col-md-4">
    <h3 class="vd-teaser-link-title">Territoire</h3>
    <p class="vd-teaser-link-text">Aménagement, Améliorations foncières, Opérations foncières, Géologie, Dangers Naturels, Informations sur le territoire, Construction, Registre foncier, Districts / Préfectures, Communes</p>
  </a>


              </div>
            </nav>
            <div class="col-md-4">
              <h2 class="vd-section-title my-3">Les plus visités</h2>
              <ul class="vd-list-links">
                <li><a href="../extrait-du-registre-des-poursuites">Extrait du registre des poursuites</a></li>
                <li><a href="#0">Inscription au chômage</a></li>
                <li><a href="#0">Formulaire indemnisation</a></li>
                <li><a href="#0">Formulaire indemnisation</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</header>

<div class="container mt-3">
  <h1 class="sr-only">Site officiel de l'&Eacute;tat de Vaud</h1>
</div><!-- container -->

<div class="container">
  <div class="row">

    <div class="col-md-8">

      <section>
        <h2 class="vd-section-title">Actualités</h2>

        <article class="vd-teaser">
          <div class="text-sm-center mb-2">
            <h3 class="vd-teaser-title"><a href="../actualite">La Journée Oser tous les métiers élargit son offre</a></h3>
            <a class="vd-teaser-img" href="../actualite">
              {# make it a macro when Toolbox is less f***ed up. ANGRY #}
              <picture>
                <img style="max-width:320px;" class="img-fluid" src="http://www.vd.ch/uploads/_processed_/5/1/csm_JOM2015_fb2430dc27.jpg" alt="article image" />
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
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="../actualite">Attribution de la bourse arts plastiques 2016</a></h3>
          <div class="vd-teaser-content">
            <p>La bourse cantonale des arts plastiques pour l’année 2016, d’une valeur de 20'000 francs, a été attribuée à Gilles Furtwängler, né en 1982 à Lausanne. Depuis dix ans, l'artiste a développé une pratique dont le matériau de base est le texte – tour à tour poétique, rythmé, absurde ou tendre, il se joue de la banalité des mots du quotidien et met à jour leur potentiel inexploré.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="../actualite">Remise des prix du concours CinéCivic 2016</a></h3>
          <div class="vd-teaser-content">
            <p>Fiona Prieur, Marco Labagnara, Luca Moessner ont été récompensés lors de la cérémonie de remise des  prix CinéCivic 2016, le 31 octobre à Genève.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="../actualite">5e Conférence nationale sur le fédéralisme</a></h3>
          <div class="vd-teaser-content">
            <p>La cinquième Conférence nationale sur le fédéralisme se tiendra les 26 et 27 octobre 2017, à Montreux.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="../actualite">Anglicans et catholiques ont déposé une demande de reconnaissance</a></h3>
          <div class="vd-teaser-content">
            <p>Les deux communautés ont signé la déclaration liminaire d’engagement, en vue d’une reconnaissance en tant qu’institution d’intérêt public.</p>
            <a href="../actualite" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

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
        <h3>Vaccination contre la grippe en pharmacie</h3>
        <p class="mb-0">On peut se vacciner contre la grippe dans différentes pharmacies du canton.</p>
        <p><a href="#">plus d'info</a></p>
      </article>
      <hr>

      <article>
        <h3>Bourse de compagnonnage théâtrale</h3>
        <p class="mb-0">L’Etat de Vaud et la Ville de Lausanne mettent au concours la 8e bourse de compagnonnage théâtral.</p>
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

{% include "../organisms/footer.html.swig" %}
