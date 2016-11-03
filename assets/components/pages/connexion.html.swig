---
title: Connexion
name: connexion
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
    {% include "../molecules/breadcrumb.html.swig" %}
    <h1>Extrait du registre des poursuites</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">

    <div class="col-md-8">
      <form>
        <div class="form-group">
          <label for="exampleInputEmail1">Identifiant</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Mot de passe</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <p>
          <button type="submit" class="btn btn-primary">Connexion</button>
        </p>
      </form>
      <p>
        <a href="#">Mot de passe oublié ?</a>
      </p>
    </div>


    <div class="col-md-4">
      <p>
        Vous ne possédez pas encore de compte ?
      </p>
      <p>
        <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r">Créer un compte</a>
      </p>

    </div>

  </div>
</div>

{% include "../organisms/footer.html.swig" %}
