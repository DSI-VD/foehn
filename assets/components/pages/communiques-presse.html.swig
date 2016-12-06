---
title: Communiques presse
name: communiques-presse
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
        <h1>Communiqués de presse</h1>
  </div>
</div>

<main class="container">
  <div class="row mt-3">

    <div class="col-md-8">

      <form class="mt-1 mb-3">
        <div class="row">
          <div class="col-md-6">
            <fieldset class="form-inline">
              <legend class="h2">Recherche<span class="sr-only">par mots clefs</span></legend>
              <div class="form-group">
                <label class="sr-only" for="exampleInputAmount">Recherche par mots clefs</label>
                <input type="text" class="form-control" id="exampleInputAmount" placeholder="Recherche">
              </div>
            </fieldset>
          </div>
          <div class="col-md-6">
            <fieldset>
              <legend class="h2">Date de publication</legend>
              <div class="form-inline">
                du
                <input id="date-form-day" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="JJ" value="">
                <label for="date-form-month" class="sr-only">Mois</label>
                <input id="date-form-month" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="MM" value="">
                <label for="date-form-year" class="sr-only">Année</label>
                <input id="date-form-year" class="form-control" type="text" pattern="[0-9]{4}" name="name" size="4" placeholder="AAAA" value="">
              </div>
              <div class="form-inline">
                au
                <input id="date-form-day" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="JJ" value="">
                <label for="date-form-month" class="sr-only">Mois</label>
                <input id="date-form-month" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="MM" value="">
                <label for="date-form-year" class="sr-only">Année</label>
                <input id="date-form-year" class="form-control" type="text" pattern="[0-9]{4}" name="name" size="4" placeholder="AAAA" value="">
              </div>
            </fieldset>
          </div>
        </div>
        <button type="submit" class="btn btn-primary"><span class="fa fa-search"></span> Rechercher</button>
      </form>

      <article>
        <a class="vd-teaser-link" href="../communiques-presse-detail">
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur. (surtitre)</p>
          <h3 class="vd-teaser-link-title">Lorem ipsum dolor sit amet. (titre)</h3>
          <p class="vd-teaser-link-text text-muted">publié le 1 juillet 2016 (date de publication)</p>
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet incidunt nisi, nihil? (chapeau)</p>
        </a>
      </article>

      <article>
        <a class="vd-teaser-link" href="../communiques-presse-detail">
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur.</p>
          <h3 class="vd-teaser-link-title">Lorem ipsum dolor sit amet.</h3>
          <p class="vd-teaser-link-text text-muted">publié le 1 juillet 2016</p>
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet incidunt nisi, nihil?</p>
        </a>
      </article>

      <article>
        <a class="vd-teaser-link" href="../communiques-presse-detail">
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur.</p>
          <h3 class="vd-teaser-link-title">Lorem ipsum dolor sit amet.</h3>
          <p class="vd-teaser-link-text text-muted">publié le 1 juillet 2016</p>
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet incidunt nisi, nihil?</p>
        </a>
      </article>

      <article>
        <a class="vd-teaser-link" href="../communiques-presse-detail">
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur.</p>
          <h3 class="vd-teaser-link-title">Lorem ipsum dolor sit amet.</h3>
          <p class="vd-teaser-link-text text-muted">publié le 1 juillet 2016</p>
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet incidunt nisi, nihil?</p>
        </a>
      </article>

      <article>
        <a class="vd-teaser-link" href="../communiques-presse-detail">
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur.</p>
          <h3 class="vd-teaser-link-title">Lorem ipsum dolor sit amet.</h3>
          <p class="vd-teaser-link-text text-muted">publié le 1 juillet 2016</p>
          <p class="vd-teaser-link-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet incidunt nisi, nihil?</p>
        </a>
      </article>

      <div class="text-xxs-center">

      {% include "../molecules/nav-pagination.html.swig" %}

    </div>
    </div>

    <aside class="col-md-4 small">
      <h2>Bureau d'information et de communication</h2>
      <p>Rue de la barre 2 <br>1014 Lausanne</p>

      <ul class="vd-list-links">
        <li><a href="#0">info.spi@vd.ch</a></li>
        <li><a href="#0">voir sur la carte</a></li>
      </ul>

      <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r mt-2">Contacter l'office</a>

      <p>Les communiqués diffusés par les autres institutions de l'Etat sont disponible sur les pages suivantes:</p>
      <ul class="vd-list-links">
        <li><a href="#">communiqués de la Police cantonale</a></li>
        <li><a href="#">communiqués du Centre hospitalier universitaire vaudois (CHUV)</a></li>
        <li><a href="#">communiqués de l'Université de Lausanne</a></li>
      </ul>

      <p>
        <span class="fa fa-rss-square" aria-hidden="true"></span> <a href="#">Abonnement</a>
      </p>

    </aside>

  </div>
</main>

{% include "../organisms/footer.html.swig" %}
