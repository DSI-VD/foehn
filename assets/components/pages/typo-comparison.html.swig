---
title: Typo Comparison
name: typo-comparison
collection: pages
styleguide: false
layout: page-compare.html.swig
---
<!-- CSS in the HTML :(
     kittens will die -->
<style>
.presbyopia {
  color: transparent !important;
  text-shadow: 0 0 2px rgba(0,0,0,0.85) !important;
}
</style>

<div id="typo-switch">
  <div class="container">
    <div class="my-3">
      <div class="btn-group" role="group" aria-label="Switch Fonts">
        <button type="button" class="btn btn-secondary" data-font-class="">1. Graphik + Produkt</button>
        <button type="button" class="btn btn-secondary" data-font-class="presbyopia">+ presbyopia</button>
      </div>
      <div class="btn-group" role="group" aria-label="Switch Fonts">
        <button type="button" class="btn btn-secondary" data-font-class="text-meta">2. Meta</button>
        <button type="button" class="btn btn-secondary" data-font-class="text-meta presbyopia">+ presbyopia</button>
      </div>
      <div class="btn-group" role="group" aria-label="Switch Fonts">
        <button type="button" class="btn btn-secondary"data-font-class="text-museo-calluna">3. Museo + Calluna</button>
        <button type="button" class="btn btn-secondary"data-font-class="text-museo-calluna presbyopia">+ presbyopia</button>
      </div>
    </div>
  </div>
  <div class="vd-bg-pattern-gray py-1">
    <div class="container">
      <div class="row">
        <div class="col-sm-8">
          {% include "../molecules/breadcrumb.html.swig" %}
          <h1>Réforme de la protection civile</h1>
        </div>
        <div class="col-sm-4">
          <button type="button" class="btn btn-success btn-block vd-btn-chevron-r mt-2">Commander un extrait du registre des poursuites</button>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row mt-3">
      <div class="col-sm-8 col-lg-7">
        <h2>Vers une organisation simplifiée pour plus d’efficience</h2>

        <p>Le processus de modernisation de la Protection civile vaudoise, initié il y a plusieurs années, a été définitivement accepté en novembre 2014 par le Grand Conseil vaudois qui a approuvé à l’unanimité le projet de modification de la Loi d’exécution de la législation fédérale sur la protection civile (LVLPCi) du 11 septembre 1995. La nouvelle loi définit une réorganisation de la Protection civile en <strong>10 Organisations régionales de Protection civile (ORPC)</strong> calquées sur le découpage des districts.</p>

        <p>Cette réforme vise à moderniser et améliorer la structure de la Protection civile vaudoise (PCI VD) pour lui permettre de répondre aux risques et dangers actuels et futurs, tout en garantissant la même qualité de prestation à l’ensemble des citoyens du canton.</p>

        <h3>Projet adapté à la réalité sécuritaire d'aujourd'hui</h3>
        <p>Mandaté par le Conseil d’Etat du canton de Vaud, le Service de la sécurité civile et militaire (SSCM), en étroite collaboration avec les partenaires sécuritaires ainsi que les représentants politiques de l’échelon cantonal et communal, a développé un projet de loi visant à adapter la PCi VD à la réalité d’aujourd’hui et aux risques et menaces identifiés.</p>

        <h2><a href="#0">10 régions</a></h2>
        <p>Les régions de Protection civile conserveront une importante autonomie dans la marche des affaires régionales, tout en remplissant leurs missions de base. Ces missions, ainsi que les axes stratégiques, la standardisation et la qualité des prestations pour l’ensemble du canton seront quant à eux prédéfinis par le service en charge de la protection civile en collaboration avec les présidents des comités directeurs (CODIR), assurant ainsi à chaque citoyen des prestations de base uniformes sur l’ensemble du territoire cantonal.</p>

        <p>Sur le plan opérationnel, les commandants des ORPC répondront tactiquement et techniquement au Commandant cantonal de la PCi VD. Le canton continuera d’assumer les responsabilités suivantes : diriger l’institution, assurer la formation de base et celle des cadres, assurer la logistique standardisée, garantir la disponibilité opérationnelle, ainsi que l’alarme à la population.</p>

        <p>Un détachement cantonal complète cette organisation en répondant aux besoins spécifiques du canton et en appuyant les ORPC selon le principe de subsidiarité. Son inscription formelle dans la loi répond à une volonté de légitimité et de transparence de cet outil cantonal et de ses prestations. </p>

        <h3>Protection civile 2015+</h3>
        <p>En outre, le projet de loi intègre – notamment en termes de baisse d’effectif et d’interopérabilité cantonale – les mesures proposées dans le <a href="#0">rapport du Conseil fédéral</a> sur la stratégie de la protection de la population et de la protection civile 2015+.</p>

        <p>Grâce à l’entrée en vigueur de cette nouvelle loi, la Protection civile peut renforcer son rôle au sein du système sécuritaire vaudois, en prenant en compte le nécessaire équilibre entre ressources et moyens.</p>
      </div>
      <div class="col-sm-4 offset-lg-1">
        <h2>Office des poursuites de Lausanne</h2>
        <p>Avenue de Longemalle 1 <br>1020 Renens</p>

        <ul class="vd-list-links">
          <li><a href="#0">info.spi@vd.ch</a></li>
          <li><a href="#0">voir sur la carte</a></li>
        </ul>

        <a href="#0" class="btn btn-primary btn-sm vd-btn-chevron-r mt-2">Contacter l'office</a>

        <h2 class="mt-3 vd-section-title">Autres prestations liées</h2>
        <ul class="vd-list-links">
          <li><a href="#0">Lien 1</a></li>
          <li><a href="#0">Lien 2</a></li>
          <li><a href="#0">Lien 3</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

{% include "../organisms/footer.html.swig" %}

<script type="text/javascript">
  window.onload = function () {
    var buttons = document.querySelectorAll('button');
    var wrapper = document.querySelector('#typo-switch');

    for (var i = 0; i < buttons.length; i++) {
      buttons[i].addEventListener('click', function(e) {
        var fontClass = e.target.dataset.fontClass;
        wrapper.className = fontClass;
      });
    }
  }
</script>
