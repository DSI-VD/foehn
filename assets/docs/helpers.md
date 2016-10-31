---
title: Helpers
name: helpers
collection: docs
styleguide: true
---
### Background Helpers

`.vd-bg-pattern-green`

<div class="vd-bg-pattern-green mb-3">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12 mt-1">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, molestiae vitae eius porro! Ipsa sit animi, corrupti corporis numquam quam. Illum quod sit dicta, fugiat autem illo. Aspernatur at, asperiores?</p>
      </div>
    </div>
  </div>
</div>

`.vd-bg-pattern-green-bright`

<div class="vd-bg-pattern-green-bright mb-3">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12 mt-1">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, molestiae vitae eius porro! Ipsa sit animi, corrupti corporis numquam quam. Illum quod sit dicta, fugiat autem illo. Aspernatur at, asperiores?</p>
      </div>
    </div>
  </div>
</div>

`.vd-bg-pattern-gray`

<div class="vd-bg-pattern-gray mb-3">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12 mt-1">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, molestiae vitae eius porro! Ipsa sit animi, corrupti corporis numquam quam. Illum quod sit dicta, fugiat autem illo. Aspernatur at, asperiores?</p>
      </div>
    </div>
  </div>
</div>

### Spacing helpers

To set an offset to the sidebar and make it overlap the gray title, use the `.vd-offset-top`.

<div class="vd-bg-pattern-gray">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-8 mt-1">
        <h1 class="mb-0">Title here</h1>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="content col-xs-8 mt-2">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
    <div class="col-xs-4 vd-offset-top">
      {% include "assets/components/molecules/nav-side.html.swig" %}
    </div>
  </div>
</div>
