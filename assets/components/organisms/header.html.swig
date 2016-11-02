---
title: Header
name: header
collection: organisms
notes: |
---
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-sm-right">

        {# nav #}
        <nav class="nav nav-inline hidden-sm-down mb-1">
          <a class="nav-link active" href="#0">Autorités</a>
          <a class="nav-link" href="#0">Annuaire</a>
          <a class="nav-link" href="#0">Agenda</a>
          <a class="nav-link" href="#0">Contact</a>
          <a class="nav-link" href="#0">Espace sécurisé</a>
        </nav>

        {# nav mobile #}
        <div class="vd-nav-mobile dropdown hidden-md-up">
          <button class="btn btn-link dropdown-toggle" data-toggle="dropdown" type="button" id="nav-mobile-button">menu<span class="bars"><span class="bar"></span><span class="bar"></span><span class="bar"></span></span></button>

          <nav class="dropdown-menu" aria-labelledby="nav-mobile-button">
            <div class="dropdown-item pt-2 pb-1 text-xs-center">
              <a class="btn btn-primary btn-sm vd-btn-chevron-r" href="#">Tous les thèmes</a>
            </div>
            <div class="dropdown-item px-0 pb-0">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link active" href="#0">Autorités</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#0">Annuaire</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#0">Agenda</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#0">Contact</a>
                </li>
                <li class="nav-item vd-nav-item-secure">
                  <span class="fa fa-lock fa-lg" aria-hidden="true"></span>
                  <a class="nav-link btn btn-primary btn-sm vd-btn-chevron-r" href="#0">Accéder à l'espace sécurisé</a>
                </li>
              </ul>
            </div>
            <div class="dropdown-item px-0 pb-0">
              <p class="px-1 mb-0 text-muted"><small>Découvrir</small></p>
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="#0">International</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#0">Tourisme</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#0">Musées</a>
                </li>
              </ul>
            </div>
            <div class="dropdown-item bg-inverse">
              <p class="text-white text-xs-center mt-1">
                <small>Suivre vd.ch sur les réseaux sociaux</small>
              </p>

              {# social icons #}
              <ul class="list-inline vd-social-icons text-xs-center">
                <li class="list-inline-item">
                  <a class="vd-social-icon bg-primary" href="#0" title="Facebook" aria-label="Like us on Facebook"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                </li>
                <li class="list-inline-item">
                  <a class="vd-social-icon bg-primary" href="#0" title="Twitter" aria-label="Like us on Twitter"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                </li>
                <li class="list-inline-item">
                  <a class="vd-social-icon bg-primary" href="#0" title="Youtube" aria-label="Like us on Youtube"><span class="fa fa-youtube-play" aria-hidden="true"></span></a>
                </li>
                <li class="list-inline-item">
                  <a class="vd-social-icon bg-primary" href="#0" title="Instagram" aria-label="Like us on Instagram"><span class="fa fa-instagram" aria-hidden="true"></span></a>
                </li>
              </ul>

            </div>
          </nav>
        </div>

      </div>

    </div>
    <div class="row">
      <div class="col-md-5">

        {# logo-etat #}
        <div class="vd-logo mb-2">
          <div class="vd-logo-canton">
            <img src="../build/svg/logo/logo.svg" alt="Canton de Vaud" />
          </div>
          <div class="vd-logo-etat">
            <span id="vd-logo-etat-title">Site officiel<span class="sr-only"> de l'État de Vaud</span></span>
            <img src="../build/svg/ETATVAUD.svg" alt="État de Vaud" aria-labelledby="vd-logo-etat-title" />
          </div>
        </div>

      </div>
      <div class="col-md-5 offset-md-2">

        {# search form #}
        <form class="input-group vd-search-form my-2" action="#">
          <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
          <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
          <span class="input-group-btn">
            <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </span>
        </form>


      </div>
    </div>
  </div>

  {# nav primary #}
  <div class="vd-nav-primary">
    <div class="vd-nav-primary-toggle">
      <div class="container">
        <button type="button" class="btn btn-primary btn-sm" data-toggle="collapse" data-target="#nav-primary-container"  aria-controls="nav-primary-container" aria-expanded="false">Tous les thèmes</button>
      </div>
    </div>
    <div class="collapse clearfix" id="nav-primary-container">
      <div class="vd-nav-primary-content">
        <div class="container">
          <div class="row">
            <nav class="col-md-8" role="navigation">
              <div class="row">
                <div class="col-md-4">
                  {% for item in data.nav_primary.menu %}
                    <a href="#0" class="vd-nav-primary-item">
                      <span>Culture</span> <small>Aides et soutiens, Musées cantonaux, Patrimoine, Cinéma, Passculture, Bibliothèque cantonale et universitaire, …</small>
                    </a>
                    {% if loop.index % 4 == 0 %}
                      </div><div class="col-md-4">
                    {% endif %}
                  {% endfor %}
                </div>
              </div>
            </nav>
            <div class="col-md-4">
              <h2 class="vd-section-title my-3">Les plus visités</h2>
              <ul class="vd-list-links">
                <li><a href="#0">Extrait du registre du commerce</a></li>
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
