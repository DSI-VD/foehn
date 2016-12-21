---
title: Headings
name: Headings
collection: atoms
wrapper: col-md-6
bootstrap: http://v4-alpha.getbootstrap.com/content/typography/#headings
variants:
  section_title: Section Title
  icon_title: Icon Title
notes: |
  The **Section Title** is obtained with the `.vd-section-title` class.

  The **Icon Title** is obtained with the `.vd-icon-title` class.
---
{% if not variant -%}
<h1>Heading 1</h1>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
<h2>Heading 2</h2>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
<h3>Heading 3</h3>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
<h4>Heading 4</h4>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
<h5>Heading 5</h5>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
<h6>Heading 6</h6>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
{% elseif variant == 'section_title' -%}
<h2 class="vd-section-title">Section title</h2>
<p>Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
{% elseif variant == 'icon_title' -%}
<h1 class="vd-icon-title"><span class="fa fa-arrow-down" aria-hidden="true"></span> Heading 1</h1>
<h2 class="vd-icon-title"><span class="fa fa-arrow-down" aria-hidden="true"></span> Heading 2</h2>
<h3 class="vd-icon-title"><span class="fa fa-arrow-down" aria-hidden="true"></span> Heading 2</h3>
{%- endif -%}
