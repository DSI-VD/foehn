---
title: Template 2 colonnes
name: template-2-colonnes
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Page title</h1>
  </div>
</div>

<div class="container mt-3">
  <div class="row">

    <main class="col-md-8" id="main">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, excepturi? Soluta maiores dignissimos voluptatibus culpa inventore, dolore iure, quo ut neque nobis quis doloribus? Culpa consequatur molestiae modi harum autem ipsum numquam aspernatur magni rem? Dolorum nesciunt expedita repudiandae deleniti necessitatibus mollitia rem quaerat asperiores repellat, voluptas, accusantium culpa labore!</p>
    </main>

    <div class="col-md-4">
      <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam corporis odio debitis ex vitae, qui. Harum quam quis voluptate atque. Architecto animi, sint. Numquam, doloribus reprehenderit. Repellendus, in a eaque libero delectus dolorem porro excepturi voluptate quasi officia, ab esse.
      </p>
    </div>

  </div>
</div>

{% include "../organisms/footer.html.swig" %}
