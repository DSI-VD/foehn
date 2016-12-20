---
title: Nav Primary
name: nav-primary
collection: molecules
notes: |
  `.vd-nav-primary` navigation. **Make sure you add a `<div class="clearfix hidden-sm-down"></div>` every three (3) items, to avoid issues with IE.**

  To have the navigation open on load:
  - Remove the `.collapsed` class on the toggle button
  - Set the `aria-expanded` attribute to `true`
  - Add the `.in` class to the collapsible elemment <br>→ `<div class="collapse in clearfix" id="nav-primary-container">`
---
<div class="vd-nav-primary">
  <div class="vd-nav-primary-toggle">
    <div class="container">
      <button type="button" class="btn btn-primary btn-sm {% if primary_opened %}{% else %}collapsed{% endif %}" data-toggle="collapse" data-target="#nav-primary-container"  aria-controls="nav-primary-container" aria-expanded="{% if primary_opened %}true{% else %}false{% endif %}">Tous les thèmes</button>
    </div>
  </div>
  <div class="collapse {% if primary_opened %}in {% endif %}clearfix" id="nav-primary-container">
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
