---
title: Dropdown
name: Dropdown
collection: molecules
notes: |
  You can use the following classes to align the button / submenu:
  - `vd-dropdown-center`: The dropdown text and dropdown box is centered.
  - `vd-dropdown-left`: the dropdown text and dropdown box is left aligned.
  - `vd-dropdown-right`: the dropdown text and dropdown box is right aligned.

  You can use the following classes to style the element
  - `vd-dropdown-purple`: The box text and button are purple.
---
<div>
  <div class="vd-dropdown vd-dropdown-right vd-dropdown-purple btn-group">
    <a data-toggle="dropdown" class="dropdown-label">
      <span class="title">Pierre Dupond</span><br>
      <span>Commune de Belmont-sur-Lausanne</span>
    </a>
    <a class="dropdown-toggle-split dropdown-chevron" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="icons icons-chevron-bottom"></i>
      <span class="sr-only">Toggle Dropdown</span>
    </a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Separated link</a>
    </div>
  </div>
</div>
