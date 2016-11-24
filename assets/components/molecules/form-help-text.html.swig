---
title: Form help text
name: form-help-text
collection: molecules
notes: |
  For accessibility, use `aria-describedby` attribut.
---
<div class="form-group">
  <label for="mail">Courriel</label>
  <input class="form-control" type="text" id="mail" name="mail" value="" aria-describedby="mailHelp">
  <small id="mailHelp" class="form-text text-muted">Votre courriel ne sera pas communiqué à des organismes tiers.</small>
</div>
