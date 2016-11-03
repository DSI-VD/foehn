---
title: Demandes a traiter
name: demandes-a-traiter
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

{% include "../molecules/secure-tabs.html.swig" %}

<div class="container mt-3">

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

      <h2>Demandes à traiter</h2>

      <article class="card card-block card-inverse card-info">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre demande de permis de navigation a été traitée et le document vous a été transmis à votre adresse de livraison le xx.xx.xxxx</a></p>
      </article>

      <article class="card card-block">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre déclaration d'impôt de revenu sur la fortune pour la période fiscale 2015 a été reçu le ... et est en cours de traitement</a></p>
      </article>

      <article class="card card-block">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre déclaration d'impôt de revenu sur la fortune pour la période fiscale 2015 a été reçu le ... et est en cours de traitement</a></p>
      </article>

      <article class="card card-block">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre déclaration d'impôt de revenu sur la fortune pour la période fiscale 2015 a été reçu le ... et est en cours de traitement</a></p>
      </article>

      <article class="card card-block">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre déclaration d'impôt de revenu sur la fortune pour la période fiscale 2015 a été reçu le ... et est en cours de traitement</a></p>
      </article>

      <article class="card card-block">
        <p class="card-text text-muted text-xs-right small mb-0">21.05.2016</p>
        <p class="card-text"><a href="#">Votre déclaration d'impôt de revenu sur la fortune pour la période fiscale 2015 a été reçu le ... et est en cours de traitement</a></p>
      </article>

    </div><!-- ./.col-md-8 -->

</div>

{% include "../organisms/footer.html.swig" %}
