---
title: Grid
name: grid
collection: docs
styleguide: true
---
The grid is based on [Bootstrap 4 grid system](http://v4-alpha.getbootstrap.com/layout/grid/), with **flexbox support**. Please refer to their [doc](http://v4-alpha.getbootstrap.com/layout/grid/#content) for more information. For more info about the flexbox grid, [head here](http://v4-alpha.getbootstrap.com/layout/flexbox-grid/#content).

## Responsive breakpoints
Additionnaly to the basic grid classes (`xs` to `xl`) we added a custom breakpoint `xxs` for smaller devices.
<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th></th>
                <th class="text-xs-center">
                Really extra small devices 
                    <br>
                <small>&lt;312px</small> 
                </th>
                <th class="text-xs-center">
                    Extra small
                    <br>
                    <small>≥312px</small>
                </th>
                <th class="text-xs-center">
                    Small
                    <br>
                    <small>≥576px</small>
                </th>
                <th class="text-xs-center">
                    Medium
                    <br>
                    <small>≥768px</small>
                </th>
                <th class="text-xs-center">
                    Large
                    <br>
                    <small>≥992px</small>
                </th>
                <th class="text-xs-center">
                    Extra large
                    <br>
                    <small>≥1200px</small>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th class="text-nowrap" scope="row">Grid behavior</th>
                <td colspan="2">Horizontal at all times</td>
                <td colspan="4">Collapsed to start, horizontal above breakpoints</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Max container width</th>
                <td colspan="2">None (auto)</td>
                <td>540px</td>
                <td>720px</td>
                <td>960px</td>
                <td>1140px</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Class prefix</th>
                <td><code>.col-xxs-</code>
                </td>
                <td><code>.col-xs-</code>
                </td>
                <td><code>.col-sm-</code>
                </td>
                <td><code>.col-md-</code>
                </td>
                <td><code>.col-lg-</code>
                </td>
                <td><code>.col-xl-</code>
                </td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row"># of columns</th>
                <td colspan="6">12</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Gutter width</th>
                <td colspan="6">30px (15px on each side of a column)</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Nestable</th>
                <td colspan="6">Yes</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Offsets</th>
                <td colspan="6">Yes</td>
            </tr>
            <tr>
                <th class="text-nowrap" scope="row">Column ordering</th>
                <td colspan="6">Yes</td>
            </tr>
        </tbody>
    </table>
</div>

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
