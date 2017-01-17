---
title: Teaser
name: teaser
collection: molecules
variants:
  no_image: Default Without image
  left: Align left
notes: |
  Image is not mandatory. You can remove the `<picture>` element.
---
{% if not variant -%}
<article class="vd-teaser{% if teaser_wrapper %} {{ teaser_wrapper }}{% else %}{% endif %}">
  <a href="../actualite" class="vd-link-invisible">
    <div class="text-xxs-center mb-2">
      <h3 class="mb-2">Lorem ipsum dolor sit amet</h3>
      {% include '../molecules/figure.html.swig' with {'variant' : 'category', 'figure_wrapper' : 'vd-teaser-img'}%}
    </div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p class="vd-teaser-meta">14.06.2016</p>
  </a>
</article>
{% elseif variant == 'no_image' -%}
<article class="vd-teaser{% if teaser_wrapper %} {{ teaser_wrapper }}{% else %}{% endif %}">
  <a href="../actualite" class="vd-link-invisible">
    <div class="text-xxs-center mb-2">
      <h3 class="mb-2">Lorem ipsum dolor sit amet</h3>
    </div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p class="vd-teaser-meta">14.06.2016</p>
  </a>
</article>
{% elseif variant == 'left' -%}
<article class="vd-teaser{% if teaser_wrapper %} {{ teaser_wrapper }}{% else %}{% endif %}">
  <a href="../actualite" class="vd-link-invisible">
    <h3 class="mb-2">Lorem ipsum dolor sit amet</h3>
    {% include '../molecules/figure.html.swig' with {'variant' : 'category'} %}
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p class="vd-teaser-meta">14.06.2016</p>
  </a>
</article>
{% endif %}
