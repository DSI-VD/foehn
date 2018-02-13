To have the navigation open on load:
- Remove the `.collapsed` class on the toggle button
- Set the `aria-expanded` attribute to `true`
- Add the `.in` class to the collapsible elemment <br>→ `<div class="collapse in clearfix" id="nav-primary-container">`

# Comportement de la navigation sur vd.ch

Sur le site vd.ch, la navigation est toujours fermé sauf sur la homepage
lorsqu'on est en format desktop.
Cette exception est gérée via JavaScript.
