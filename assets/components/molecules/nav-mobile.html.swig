---
title: Nav Mobile
name: nav-mobile
collection: molecules
notes: |
  The mobile navigation, hidden on desktop with `.hidden-md-down`.
---
<div class="vd-nav-mobile dropdown">
  <button class="btn btn-link dropdown-toggle" data-toggle="dropdown" type="button" id="nav-mobile-button">menu<span class="bars"><span class="bar"></span><span class="bar"></span><span class="bar"></span></span></button>

  <nav class="dropdown-menu" aria-labelledby="nav-mobile-button">
    <div class="dropdown-item pt-2 pb-1 text-xxs-center">
      <a class="btn btn-primary btn-sm vd-btn-chevron-r" href="../domaines">Tous les thèmes</a>
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
          <a class="nav-link btn btn-primary btn-sm vd-btn-chevron-r" href="../connexion">Accéder à l'espace sécurisé</a>
        </li>
      </ul>
    </div>
    <div class="dropdown-item">
      <p>Découvrir</p>
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
      <p class="text-white text-xxs-center mt-1">
        <small>Suivre vd.ch sur les réseaux sociaux</small>
      </p>

      {# social icons #}

    </div>
  </nav>
</div>
