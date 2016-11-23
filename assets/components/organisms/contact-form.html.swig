---
title: Contact form
name: contact-form
collection: organisms
wrapper: container
notes: |
---

<form>

  <div class="form-group">
    <label for="firstname">Prénom</label>
    <input class="form-control" type="text" id="firstname" name="firstname" value="" required aria-describedby="firstnameHelp">
    <small id="firstnameHelp" class="form-text text-muted">Ce champs est obligatoire.</small>
  </div>

  <div class="form-group">
    <label for="lastname">Nom</label>
    <input class="form-control" type="text" id="lastname" name="lastname" value="" required aria-describedby="lastnameHelp">
    <small id="lastnameHelp" class="form-text text-muted">Ce champs est obligatoire.</small>
  </div>

  <div class="form-group">
    <label for="mail">Courriel</label>
    <input class="form-control" type="text" id="mail" name="mail" value="" required aria-describedby="mailHelp">
    <small id="mailHelp" class="form-text text-muted">Ce champs est obligatoire.</small>
  </div>

  <div class="form-group">
    <label for="phone">Téléphone</label>
    <input class="form-control" type="text" id="phone" name="phone" value="">
  </div>

  <div class="form-group">
    <label for="subject">Sujet</label>
    <input class="form-control" type="text" id="subject" name="subject" value="" required aria-describedby="subjectHelp">
    <small id="subjectHelp" class="form-text text-muted">Ce champs est obligatoire.</small>
  </div>

  <div class="form-group">
    <label for="message">Message</label>
    <textarea class="form-control" id="message" name="message" rows="8" cols="40" required aria-describedby="messageHelp"></textarea>
    <small id="messageHelp" class="form-text text-muted">Ce champs est obligatoire.</small>
  </div>

  <div class="form-group">
    <input class="btn btn-primary" type="button" name="name" value="Envoyer">
  </div>

</form>
