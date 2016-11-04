---
title: Formulaire prestation
name: formulaire-prestation
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

{% include "../molecules/secure-tabs.html.swig" %}

<div class="container mt-3">

  <div class="row">
    <div class="col-md-4">
      <h3>Question 1 de 2</h3>
    </div>
    <div class="col-md-8">

      <form>

        <div class="row">

          <div class="col-md-6 form-group">
            <label for="nom">Nom (requis)</label>
            <input type="text" class="form-control" id="nom" aria-describedby="emailHelp" placeholder="Demarty" required="1">
          </div>

          <div class="col-md-6 form-group">
            <label for="prenom">Prénom (requis)</label>
            <input type="text" class="form-control" id="prenom" aria-describedby="emailHelp" placeholder="Gilles">
          </div>

        </div>
        <div class="row">

          <div class="col-md-6 form-group">
            <label for="etablissement">Etablissment</label>
            <input type="text" class="form-control" id="etablissement" aria-describedby="emailHelp">
          </div>

          <div class="col-md-6 form-group">
            <label for="fonction">Fonction</label>
            <input type="text" class="form-control" id="fonction" aria-describedby="emailHelp">
          </div>

        </div>
        <div class="row">

          <div class="col-md-6 form-group">
            <label for="exampleSelect1">Catégorie</label>
            <select class="form-control" id="exampleSelect1">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </div>

          <div class="col-md-6 form-group">
            <label for="adresse">Adresse (requis)</label>
            <input type="text" class="form-control" id="adresse" aria-describedby="emailHelp" required="1">
          </div>

        </div>
        <div class="row">

          <div class="col-md-6 form-group">
            <label for="email">Email (requis)</label>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required="1">
            <small id="emailHelp" class="form-text text-muted">Si vous ne renseignez pas votre email, vous ne recevrez pas d'accusé de récéption</small>
          </div>

          <div class="col-md-6 form-group">
            <label for="pays">Pays</label>
            <input type="pays" class="form-control" id="email" aria-describedby="emailHelp">
          </div>

        </div>

        <div class="row">
          <div class="col-md-6 push-md-6">
            <p>
              <a href="#" class="btn btn-primary">Suivant</a>
            </p>
          </div>
        </div>
      </form>

    </div>
  </div>

</div>

{% include "../organisms/footer.html.swig" %}
