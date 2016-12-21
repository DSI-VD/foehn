---
title: Logo Etat
name: logo-etat
collection: molecules
variants:
  alternate: Alternate for homepage
notes: |
  This is the logo for the État de Vaud website.
---
{% if not variant -%}
<a href="../accueil" class="vd-logo" aria-labelledby="aria-vd-logo">
  <div class="vd-logo-title">
    <div id="aria-vd-logo">Site officiel<span class="sr-only"> de l'État de Vaud</span></div>
    <img src="{{data.path}}build/svg/ETATVAUD.svg" alt="État de Vaud" aria-hidden="true" />
  </div>
</a>
{% elseif variant == 'alternate' -%}
<a href="../accueil" class="vd-logo" aria-labelledby="aria-vd-logo">
  <div class="vd-logo-img">
    <img src="{{data.path}}build/svg/logo/logo.svg" class="img-fluid hidden-sm-down" alt="Logo du canton de Vaud" />
    <img src="{{data.path}}build/svg/logo/logo-square.svg" class="img-fluid hidden-md-up" aria-hidden="true" alt="Logo du canton de Vaud" />
  </div>
  <div class="vd-logo-title">
    <div id="aria-vd-logo">Site officiel<span class="sr-only"> de l'État de Vaud</span></div>
    <img src="{{data.path}}build/svg/ETATVAUD.svg" alt="État de Vaud" aria-hidden="true" />
  </div>
</a>
{%- endif -%}
