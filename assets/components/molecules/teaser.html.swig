---
title: Teaser
name: teaser
collection: molecules
notes: |
---
<article class="vd-teaser{% if teaser_wrapper %} {{ teaser_wrapper }}{% else %}{% endif %}">
  <a href="../actualite" class="vd-link-invisible">
    <div class="text-xxs-center mb-2">
      <h3 class="mb-2">Lorem ipsum dolor sit amet</h3>
      {% if teaser_image %}
      <div class="vd-teaser-img">
        {# make it a macro when Toolbox is less f***ed up. ANGRY #}
        <picture>
          {% for breakpoint in data.breakpoints %}
            <source
              {% if breakpoint.value > 0 %}
              media="(min-width: {{ breakpoint.value }}px)"
              {% endif %}
              srcset="http://placehold.it/{{ breakpoint.image_size.teaser[0] }}x{{ breakpoint.image_size.teaser[1] }} 1x, http://placehold.it/{{ breakpoint.image_size.teaser[0] * 2 }}x{{ breakpoint.image_size.teaser[1] * 2 }} 2x">
          {% endfor %}
          <img class="img-fluid" src="https://placehold.it/300x150" alt="article image"/>
        </picture>
      </div>
      {% endif %}
    </div>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p class="vd-teaser-meta">14.06.2016</p>
  </a>
</article>
