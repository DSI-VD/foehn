---
title: Blockquote
name: blockquote
collection: molecules
variants:
  bubble: Bubble
  bubble_media: Bubble with portrait image
bootstrap: http://v4-alpha.getbootstrap.com/content/typography/#blockquotes
notes: |
  There are 3 different blockquotes:

    - `.blockquote`: Regular blockquote
    - `.vd-blockquote-bubble`: Bubble styled blockquote, with a dark background
    - `.vd-blockquote-bubble-media`: The same as the bubble, but with a circle portrait image
---
<blockquote class="blockquote {%- if variant %} vd-blockquote-bubble{% if variant == 'bubble_media' %} vd-blockquote-bubble-media{% endif %}{% endif %}">
  {%- if variant == 'bubble_media' %}
  <img class="img-fluid rounded rounded-circle" src="http://placehold.it/120x120" alt="Portrait de l'auteur de la quote">
  {%- endif %}
  <p>La démocratie ne se découpe pas en morceaux dont on ne choisirait que les meilleurs.</p>
  <footer class="blockquote-footer">Pascal Broulis, Conseil d'État de Vaud</footer>
</blockquote>
