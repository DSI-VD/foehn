---
title: Teaser Alternate
name: teaser-alternate
collection: molecules
variants:
  alt_2: Alternate 2
  alt_3: Alternate 3
notes: |
---
{% if not variant -%}
<article class="vd-teaser vd-teaser-alternate">
  <div class="container">
    <div class="row">
      <div class="col-lg-11 offset-lg-1">
        <h3 class="vd-teaser-title mb-1"><a href="#0">Lorem ipsum dolor sit amet</a></h3>
        <div class="row">
          <div class="col-md-6">
            <div class="vd-teaser-content">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
          </div>
          <div class="col-md-6">
            <a href="#0" class="img-fluid">
              <picture class="img-fluid">
                {% for breakpoint in data.breakpoints %}
                <source {% if breakpoint.value > 0 %}media="(min-width: {{ breakpoint.value }}px)"{% endif %} srcset="http://placehold.it/{{ breakpoint.image_size.teaser[0] }}x{{ breakpoint.image_size.teaser[1] }} 1x, http://placehold.it/{{ breakpoint.image_size.teaser[0] * 2 }}x{{ breakpoint.image_size.teaser[1] * 2 }} 2x">
                  {% endfor %}
                  <img class="img-fluid" src="https://placehold.it/300x150" alt="article image" />
                </picture>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-12">
          <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          <hr class="mt-3 mb-3 ml-0 mr-0 vd-separator vd-separator-gray-pattern">
        </div>
      </div>
    </div>
  </article>
{% elseif variant == 'alt_2' -%}
<article class="vd-teaser-alternate-2">
  <a href="../communiques-presse-detail">
    <header>
      <p class="small text-uppercase">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
      <h3>Lorem ipsum dolor sit amet. (titre)</h3>
    </header>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, expedita hic magnam sequi dolorum, quas repellendus ad, voluptatum sed fugiat aspernatur. Et, magni explicabo nesciunt.</p>
    <p class="small">Publié le 1 juillet 2016 (date de publication)</p>
  </a>
</article>
{% elseif variant == 'alt_3' -%}
<article class="vd-teaser row">
  <div class="col-md-8">
    <h3 class="vd-teaser-title"><a href="#0">Lorem ipsum dolor sit amet</a></h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam maxime sit non quod quisquam, magni? Delectus minima eius tempora perferendis, itaque similique quis dolores in, minus deleniti, sequi quidem dignissimos.</p>
    <dl class="row">
      <dt class="col-sm-6">Prix</dt>
      <dd class="col-sm-6"><abbr title="francs suisses">CHF</abbr> 300</dd>

      <dt class="col-sm-6">Téléphone</dt>
      <dd class="col-sm-6"><a href="tel:+41211234567">+41 21 123 45 67</a></dd>

      <dt class="col-sm-6">Courriel</dt>
      <dd class="col-sm-6"><a href="mailto:email@email.com">email@email.com</a></dd>

    </dl>
  </div>
  <div class="col-md-4">
    <a href="#0" class="img-fluid">
      <picture class="img-fluid">
        {% for breakpoint in data.breakpoints %}
        <source {% if breakpoint.value > 0 %}media="(min-width: {{ breakpoint.value }}px)"{% endif %} srcset="http://placehold.it/{{ breakpoint.image_size.teaser[0] }}x{{ breakpoint.image_size.teaser[1] }} 1x, http://placehold.it/{{ breakpoint.image_size.teaser[0] * 2 }}x{{ breakpoint.image_size.teaser[1] * 2 }} 2x">
        {% endfor %}
        <img class="img-fluid" src="https://placehold.it/300x150" alt="article image" />
      </picture>
    </a>
  </div>
</article>
<hr class="mt-3 mb-3 ml-0 mr-0 vd-separator vd-separator-gray-pattern">
{%- endif -%}
