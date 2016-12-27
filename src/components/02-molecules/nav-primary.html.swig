---
title: Nav Primary
name: nav-primary
collection: molecules
notes: |
  `.vd-nav-primary` navigation.

  To have the navigation open on load:
  - Remove the `.collapsed` class on the toggle button
  - Set the `aria-expanded` attribute to `true`
  - Add the `.in` class to the collapsible elemment <br>→ `<div class="collapse in clearfix" id="nav-primary-container">`
---
<div class="vd-nav-primary">
  <div class="vd-nav-primary-toggle">
    <div class="container">
      <section class="hidden-md-up">
        <h2 class="vd-section-title mt-1 mb-2">Les plus visités</h2>
        <ul class="vd-list-links">
          <li><a href="#0">Inscription au chômage</a></li>
          <li><a href="#0">Formulaire d'indemnisation</a></li>
          <li><a href="#0">Vaud Tax 2017</a></li>
          <li><a href="#0">Vacances scolaires et jours fériés</a></li>
        </ul>
      </section>
      <div class="text-xxs-center text-md-left">
        <button type="button" class="hidden-sm-down btn btn-primary btn-sm {% if primary_opened %}{% else %}collapsed{% endif %}" data-toggle="collapse" data-target="#nav-primary-container"  aria-controls="nav-primary-container" aria-expanded="{% if primary_opened %}true{% else %}false{% endif %}">Tous les thèmes</button>
        <a href="../domaines" class="hidden-md-up btn btn-primary btn-sm vd-btn-chevron-r">Tous les thèmes</a>
      </div>
    </div>
  </div>
  <div class="hidden-sm-down collapse {% if primary_opened %}in {% endif %}clearfix" id="nav-primary-container">
    <div class="vd-nav-primary-content">
      <div class="container">
        <div class="row">
          <nav class="col-md-8" id="nav-primary" role="navigation" aria-label="Navigation par thèmes">
            <div class="row">
              {% for domain_id, domain in data.domains.topics %}
                {% include "../molecules/teaser-link.html.swig" with {teaser_link_name: domain.name, teaser_link_href: "../domaines/#"+domain_id, teaser_link_classes: 'col-md-4', teaser_link_text: domain.description} only %}
              {% endfor %}
            </div>
          </nav>
          <div class="col-md-4">
            <h2 class="vd-section-title mt-3 mb-1">Les plus visités</h2>
            <ul class="vd-list-links">
              <li><a href="#0">Inscription au chômage</a></li>
              <li><a href="#0">Formulaire d'indemnisation</a></li>
              <li><a href="#0">Vaud Tax 2017</a></li>
              <li><a href="#0">Vacances scolaires et jours fériés</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
