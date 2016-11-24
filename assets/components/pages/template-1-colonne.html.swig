---
title: Template 1 colonne
name: template-1-colonne
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

<main id="main" class="container mt-3">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur voluptate nesciunt rerum repellendus, aut laboriosam dolore magni natus sapiente, blanditiis ab odit quae eius. Maxime cum deserunt, officiis dignissimos eos quae magni. Dicta modi est, consequuntur ullam magni nam, esse molestiae, eveniet corrupti id, ea. Quidem, inventore neque voluptates in. Veritatis, totam, illum quisquam natus esse saepe fuga! Voluptate animi voluptatibus fuga cumque architecto dolore iste dolores repellendus, quo aliquam mollitia nam totam nisi eius ipsa excepturi quas ad autem tenetur culpa dolor dolorem officiis accusamus, minima minus. Quo ullam suscipit incidunt tempora voluptate placeat voluptates reprehenderit dolores, neque praesentium?</p>
</main>

{% include "../organisms/footer.html.swig" %}
