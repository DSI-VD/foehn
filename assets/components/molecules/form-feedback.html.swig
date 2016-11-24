---
title: Form feedback
name: form-feedback
collection: molecules
notes: |
  For accessibility, use `aria-describedby="mailHelp"` and `aria-invalid="true"` attributs.
---
<div class="form-group has-danger">
  <label for="mail">Courriel</label> <strong><abbr title="required">*</abbr></strong>
  <input class="form-control form-control-danger" type="text" id="mail" name="mail" value="" required aria-required="true" aria-describedby="mailHelp" aria-invalid="true">

  <div id="mailHelp">
    <div class="form-control-feedback">Merci de renseigner votre courriel.</div>
  <small class="form-text text-muted">Votre courriel ne sera pas communiqué à des organismes tiers.</small>
  </div>
</div>
