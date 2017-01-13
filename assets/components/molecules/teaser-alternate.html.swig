---
title: Teaser Alternate
name: teaser-alternate
collection: molecules
variants:
  alt_2: Alternate 2
  two_thirds_one_third: 66% - 33%
notes: |
---
{% if not variant -%}
<article class="vd-teaser-alternate">
  <h3 class="vd-teaser-title mb-1">
    <a href="#0">Lorem ipsum dolor sit amet</a>
  </h3>
  <div class="row">
    <div class="col-md-6">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
    <div class="col-md-6">
      <a href="#">
        {% include '../molecules/figure.html.swig' %}
      </a>
    </div>
  </div>
  <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
</article>
{% elseif variant == 'two_thirds_one_third' -%}
<article class="vd-teaser-alternate">
  <h3 class="vd-teaser-title mb-1">
    <a href="#0">Lorem ipsum dolor sit amet</a>
  </h3>
  <div class="row">
    <div class="col-md-8">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
    <div class="col-md-4">
      <a href="#">
        {% include '../molecules/figure.html.swig' %}
      </a>
    </div>
  </div>
  <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
</article>
{% elseif variant == 'alt_2' -%}
<article class="vd-teaser-alternate-2">
  <a href="../communiques-presse-detail">
    <header>
      <p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
      <h3>Lorem ipsum dolor sit amet. (titre)</h3>
    </header>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, expedita hic magnam sequi dolorum, quas repellendus ad, voluptatum sed fugiat aspernatur. Et, magni explicabo nesciunt.</p>
    <p class="small font-weight-bold">Publié le 1 juillet 2016 (date de publication)</p>
  </a>
</article>
{%- endif -%}
