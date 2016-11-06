---
title: teaser-alternate
name: Teaser-alternate
collection: molecules
notes: |
---
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
