---
title: Office des faillites
name: office-des-faillites
collection: pages
styleguide: false
layout: page.html.swig
breadcrumb:
  -
    name: 'vd.ch'
    href: '../accueil/'
  -
    name: 'Autorités'
    href: '../autorites/'
  -
    name: 'Ordre Judiciaire Vaudois'
    href: '../ordre-judiciaire-vaudois/'
  -
    name: ' '
    href: '#'
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1 aria-hidden="true">Office des faillites</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">

    <main class="col-md-8" id="main">
      <h1 class="sr-only">Office des faillites</h1>
      <section>
        <h2 class="sr-only">Présentations</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae id quidem assumenda reprehenderit ea enim suscipit, consequatur quam impedit aut atque repudiandae tempore minus velit ullam hic, ipsa fuga expedita? Dolorum explicabo corporis placeat assumenda. Illo facilis iure, asperiores dolor earum vel? Voluptatem nobis quasi, necessitatibus dicta molestias perferendis a est itaque tempore eveniet, facilis quisquam impedit officia temporibus perspiciatis rem libero expedita unde commodi recusandae nulla voluptas corrupti! Inventore in quasi omnis itaque rem perspiciatis doloremque aliquid expedita tempora, quibusdam facilis ipsa nam assumenda magnam molestias cupiditate vero laborum odio natus facere! Consectetur cum id ipsum quidem, eligendi quis possimus in itaque nostrum eos? Accusantium repudiandae impedit repellendus tempora consequatur nemo libero voluptates, minima sint repellat dolor tenetur, vel voluptas natus possimus suscipit voluptatum, culpa provident fugiat soluta quos assumenda deleniti rem? Vero omnis eligendi eum nihil quaerat possimus doloremque, modi inventore corporis, laudantium alias delectus ipsum ipsam sit temporibus voluptatem necessitatibus illo suscipit beatae atque adipisci qui veritatis! Excepturi ipsa tempore, qui aliquam animi et. Quasi fugit delectus odio in dolor dignissimos aut nulla rem, excepturi expedita culpa vitae doloremque, id et exercitationem ex voluptatem ipsam fuga corrupti. Eius, ut animi. Magni sunt provident illo quibusdam, unde, maxime!</p>
      </section>

      <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

      <section>
        <h2 class="vd-section-title">Actualités</h2>

        {% include "../molecules/teaser.html.swig" %}

        {% set newsCount = 4 %}
        {% set newsCountAsArray = Array(newsCount) %}

        {% for x, y in newsCountAsArray %}
        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Lorem ipsum dolor sit amet</a></h3>
          <div class="vd-teaser-content">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>
        {% endfor %}

      </section>

      <section>
        <h2 class="vd-section-title">Projets</h2>

        <article>
          <h3 class="ml-3">Planification éoliennes vaudoise</h3>
          <div class="ml-3">
            <div class="row">
              <picture class="push-md-6 col-md-6">
                {% for breakpoint in data.breakpoints %}
                  <source {% if breakpoint.value > 0 %}media="(min-width: {{ breakpoint.value }}px)"{% endif %} srcset="http://placehold.it/{{ breakpoint.image_size.teaser[0] }}x{{ breakpoint.image_size.teaser[1] }} 1x, http://placehold.it/{{ breakpoint.image_size.teaser[0] * 2 }}x{{ breakpoint.image_size.teaser[1] * 2 }} 2x">
                {% endfor %}
                <img class="img-fluid" src="https://placehold.it/600x300" alt="article image" />
              </picture>
              <div class="pull-md-6 col-md-6">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque a dolore, assumenda.</p>
              </div>
            </div>
          </div>
          <p>
            <a href="#">lien</a>
          </p>
        </article>

      </section>

    </main>

    <div class="col-md-4">
      <h2>Tribuanl cantonal</h2>
      <p>Route du Signal 8 <br>1018 Lausanne</p>

      <h3>Heures d'ouverture</h3>
      <p>
        du lundi au vendredi de 8h00 à 11h30 et de 13h30 à 16h30
      </p>

      <ul class="vd-list-icons">
        <li><span class="fa fa-phone" aria-hidden="true"></span> <a href="#">+41 21 123 45 67</a></li>
        <li><span class="fa fa-fax" aria-hidden="true"></span> <a href="#">+41 21 123 45 67</a></li>
        <li><span class="fa fa-envelope" aria-hidden="true"></span> <a href="#">info.ojv@vd.ch</a></li>
        <li><span class="fa fa-map-marker" aria-hidden="true"></span> <a href="#">Voir sur la carte</a></li>
      </ul>

      <p>
        <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r">Contacter l'office</a>
      </p>

      <h2 class="vd-section-title">Autres prestations liées</h2>
      <ul class="vd-list-links">
        <li><a href="#0">Lien 1</a></li>
        <li><a href="#0">Lien 2</a></li>
        <li><a href="#0">Lien 3</a></li>
      </ul>
    </div>

  </div>
</div>

{% include "../organisms/footer.html.swig" %}
