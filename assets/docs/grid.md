---
title: Grid
name: grid
collection: docs
styleguide: true
---
The grid is based on [Bootstrap 4 grid system](http://v4-alpha.getbootstrap.com/layout/grid/), with **flexbox support**. Please refer to their [doc](http://v4-alpha.getbootstrap.com/layout/grid/#content) for more information. For more info about the flexbox grid, [head here](http://v4-alpha.getbootstrap.com/layout/flexbox-grid/#content).


## Basic Grid

<div class="styleguide-example mb-3">
  <!-- Stack the columns on mobile by making one full-width and the other half-width -->
  <div class="row">
    <div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
    <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
  </div>

  <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
  <div class="row">
    <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
    <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
    <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
  </div>

  <!-- Columns are always 50% wide, on mobile and desktop -->
  <div class="row">
    <div class="col-xs-6">.col-xs-6</div>
    <div class="col-xs-6">.col-xs-6</div>
  </div>
</div>

## Grid with offset

<div class="styleguide-example mb-3">
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-4 offset-md-4">.col-md-4 .offset-md-4</div>
  </div>
  <div class="row">
    <div class="col-md-3 offset-md-3">.col-md-3 .offset-md-3</div>
    <div class="col-md-3 offset-md-3">.col-md-3 .offset-md-3</div>
  </div>
  <div class="row">
    <div class="col-md-6 offset-md-3">.col-md-6 .offset-md-3</div>
  </div>
</div>

## Flexbox grid

<div class="styleguide-example mb-3">
  <div class="row">
    <div class="col-xs">
      .col-xs
    </div>
    <div class="col-xs-6">
      .col-xs-6
    </div>
    <div class="col-xs">
      .col-xs
    </div>
  </div>
  <div class="row">
    <div class="col-xs">
      .col-xs
    </div>
    <div class="col-xs">
      .col-xs
    </div>
    <div class="col-xs-5">
      .col-xs-5
    </div>
  </div>
</div>
