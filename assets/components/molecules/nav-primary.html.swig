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
      <button type="button" class="btn btn-primary btn-sm collapsed" data-toggle="collapse" data-target="#nav-primary-container"  aria-controls="nav-primary-container" aria-expanded="false">Tous les thèmes</button>
    </div>
  </div>
  <div class="collapse clearfix" id="nav-primary-container">
    <div class="vd-nav-primary-content">
      <div class="container">
        <div class="row">
          <nav class="col-md-8" id="nav-primary" role="navigation" aria-label="Navigation par thèmes">
            <div class="row">
              {% for domain, themes in data.domains.topics %}
                {% include "../molecules/teaser-link.html.swig" with {teaser_link_name: domain, teaser_link_classes: 'col-md-4', teaser_link_text: themes|join(', ')} only %}
              {% endfor %}
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
