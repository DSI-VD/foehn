---
title: Teaser Small
name: teaser-small
collection: molecules
variants:
  alt: Alternate
notes: |
  Used for example in the agenda list, with dates as title and a description
---
{% if not variant -%}
<article class="vd-teaser-small{% if teaser_wrapper %} {{ teaser_wrapper }}{% else %}{% endif %}">
  <a class="vd-link-invisible" href=“#”>
    <h3>Title here</h3>
    {% include "../molecules/numbered-title.html.swig" %}
    {% if teaser_small_image %}
      <figure class="vd-teaser-small-img">
        {% include "../atoms/image-responsive.html.swig" %}
      </figure>
    {% endif %}
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  </a>
</article>
{% elseif variant == 'alt' -%}
<article{% if teaser_wrapper %} class="{{ teaser_wrapper }}"{% else %}{% endif %}>
  <a href="../communiques-presse-detail" class="vd-link-invisible">
    <header>
      <p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
      <h3>Lorem ipsum dolor sit amet. (titre)</h3>
    </header>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, expedita hic magnam sequi dolorum, quas repellendus ad, voluptatum sed fugiat aspernatur. Et, magni explicabo nesciunt.</p>
    <p class="small font-weight-bold">Publié le 1 juillet 2016 (date de publication)</p>
  </a>
</article>
{%- endif -%}
