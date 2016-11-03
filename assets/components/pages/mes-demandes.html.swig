---
title: Mes demandes
name: mes-demandes
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Mes demandes</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">
    <div class="col-md-8">
      <h2 id="curent">Demandes en cours</h2>

      <div id="accordion" role="tablist" aria-multiselectable="true" class="m-t-1">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
            Demande de permis de conduire
          </a>
        </h5>
          </div>

          <div id="collapseOne1" class="collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-block">
              <dl class="row">
                <dt class="col-sm-5">Numero de demande</dt>
                <dd class="col-sm-7">SD45-DRG67</dd>

                <dt class="col-sm-5">Dernière mise à jour</dt>
                <dd class="col-sm-7">21-07-2017</dd>

                <dt class="col-sm-5">Status</dt>
                <dd class="col-sm-7">En cours (Validation)</dd>

              </dl>

              <p><a href="#">Télécharger le fichier PDF</a></p>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo">
            Demande d'un permis de pêche
          </a>
        </h5>
          </div>
          <div id="collapseTwo1" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree1" aria-expanded="false" aria-controls="collapseThree">
            Collapsible Group Item #3
          </a>
        </h5>
          </div>
          <div id="collapseThree1" class="collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
      </div>

      <h2 id="todo" class="mt-3">Demandes à traiter</h2>

      <div id="accordion" role="tablist" aria-multiselectable="true" class="m-t-1">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne">
            Demande de permis de conduire
          </a>
        </h5>
          </div>

          <div id="collapseOne2" class="collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-block">
              <dl class="row">
                <dt class="col-sm-3">Numero de demande</dt>
                <dd class="col-sm-9">SD45-DRG67</dd>

                <dt class="col-sm-3">Dernière mise à jour</dt>
                <dd class="col-sm-9">21-07-2017</dd>

                <dt class="col-sm-3">Status</dt>
                <dd class="col-sm-9">En cours (Validation)</dd>

              </dl>

              <p><a href="#">Télécharger le fichier PDF</a></p>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo">
            Demande d'un permis de pêche
          </a>
        </h5>
          </div>
          <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree2" aria-expanded="false" aria-controls="collapseThree">
            Collapsible Group Item #3
          </a>
        </h5>
          </div>
          <div id="collapseThree2" class="collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
      </div>

      <h2 id="all" class="mt-3">Historique</h2>

      <div id="accordion" role="tablist" aria-multiselectable="true" class="m-t-1">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne3" aria-expanded="true" aria-controls="collapseOne">
            Demande de permis de conduire
          </a>
        </h5>
          </div>

          <div id="collapseOne3" class="collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-block">
              <dl class="row">
                <dt class="col-sm-3">Numero de demande</dt>
                <dd class="col-sm-9">SD45-DRG67</dd>

                <dt class="col-sm-3">Dernière mise à jour</dt>
                <dd class="col-sm-9">21-07-2017</dd>

                <dt class="col-sm-3">Status</dt>
                <dd class="col-sm-9">En cours (Validation)</dd>

              </dl>

              <p><a href="#">Télécharger le fichier PDF</a></p>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo">
            Demande d'un permis de pêche
          </a>
        </h5>
          </div>
          <div id="collapseTwo3" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree3" aria-expanded="false" aria-controls="collapseThree">
            Collapsible Group Item #3
          </a>
        </h5>
          </div>
          <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="card-block">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
              on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
              raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
      </div>
    </div><!-- ./.col-md-8 -->

    <div class="col-md-4">
      <div class="list-group">
        <a href="#curent" class="list-group-item">Demandes en cours</a>
        <a href="#todo" class="list-group-item">Demandes à traiter</a>
        <a href="#all" class="list-group-item">Toutes les demandes</a>
      </div>
    </div>
  </div><!-- /.row -->
</div>

<footer class="footer bg-inverse p-y-3 mt-3">
  <div class="container">
    <p>footer here</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos illum nihil, dicta dolor nemo modi hic ut corporis. Vel dignissimos nam suscipit ratione quam ad omnis, natus doloribus veniam maiores.</p>
  </div>
</footer>
