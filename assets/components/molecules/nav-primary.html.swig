---
title: Nav Primary
name: nav-primary
collection: molecules
notes: |
---
<div class="nav-primary">
  <div class="container">
    <div class="container-fluid nav-primary-content">
      <div class="row">
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-4">
              {% for item in data.nav_primary.menu %}
                <a href="#0" class="nav-primary-item">
                  <span>Culture</span> <small>Aides et soutiens, Musées cantonaux, Patrimoine, Cinéma, Passculture, Bibliothèque cantonale et universitaire, …</small>
                </a>
                {% if loop.index % 4 == 0 %}
                  </div><div class="col-md-4">
                {% endif %}
              {% endfor %}
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <h2 class="vd-section-title m-y-3">Les plus visités</h2>
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
