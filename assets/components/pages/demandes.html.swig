---
title: Demandes
name: demandes
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

{% include "../molecules/secure-tabs.html.swig" %}

<div class="container mt-3">

      <p>
        <a href="#" class="btn btn-primary">Nouvelle demande</a>
      </p>

      <form>
        <div class="form-group">
          <div class="form-group">
          <label for="exampleSelect1">Trier par</label>
          <select class="form-control" id="exampleSelect1">
            <option>Date - plus récent</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>
        </div>
      </form>

      <h2>Toutes les demandes</h2>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Demande de modification d'acomptes en ligne</a></h3>
        <p>Commande en cours</p>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Demande de modification d'acomptes en ligne</a></h3>
        <p>Commande en cours</p>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Déclaration d'impôt en ligne</a></h3>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Demande de modification d'acomptes en ligne</a></h3>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Plaques aux enchères</a></h3>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Déclaration d'impôt en ligne</a></h3>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Demande de modification d'acomptes en ligne</a></h3>
      </article>

      <article>
        <p class="text-muted mb-0">21.05.2016</p>
        <h3><a href="#">Plaques aux enchères</a></h3>
      </article>

      <p>
        <a href="#" class="btn btn-primary">Nouvelle demande</a>
      </p>

    </div><!-- ./.col-md-8 -->

</div>

{% include "../organisms/footer.html.swig" %}
