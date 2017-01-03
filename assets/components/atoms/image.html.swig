---
title: Image
name: image
collection: atoms
variants:
  fluid: Responsive image
  desaturated: Desaturated image
  rounded: Rounded image
  content: Image inside content
bootstrap: http://v4-alpha.getbootstrap.com/content/images/#content
notes: |
  You can use the class `.img-fluid` to make the image responsive.

  You can use the class `.img-desaturate` on any element to desaturate the colors.

  You can use the `.rounded`, `.rounded-circle` and all `.rounded-[top,right,bottom,left]` classes on any element.

  You can use the following classes to align the image inside of a `.content` container:
  - `vd-img-center`: The image is centered above the text.
  - `vd-img-left`: the image is to the left of the text.
  - `vd-img-right`: the image is to the right of the text.
---
{% if not variant -%}
<img src="https://source.unsplash.com/random/400x200" alt="Image">
{% elseif variant == 'fluid' -%}
<img class="img-fluid" src="https://source.unsplash.com/random/400x200" alt="Responsive image">
{% elseif variant == 'desaturated' -%}
<img class="img-desaturate" src="https://source.unsplash.com/random/400x200" alt="Desaturated image">
{% elseif variant == 'rounded' -%}
<img class="rounded-circle" src="https://source.unsplash.com/random/200x200" alt="Circle image">
{% elseif variant == 'content' -%}
<div class="content">
  <img class="vd-img-left" src="https://source.unsplash.com/random/400x200" alt="Image in content">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  <img class="vd-img-center" src="https://source.unsplash.com/random/400x200" alt="Image in content">
  <img class="vd-img-right" src="https://source.unsplash.com/random/400x200" alt="Image in content">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</div>
{%- endif -%}
