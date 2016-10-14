---
title: Typo Comparison
name: typo-comparison
collection: pages
styleguide: false
layout: page-compare.html.swig
---
<div class="container">
  <div class="m-y-3">
    <div class="btn-group" role="group" aria-label="Switch Fonts">
      <button type="button" class="btn btn-secondary" data-font-class="">Graphik</button>
      <button type="button" class="btn btn-secondary" data-font-class="text-meta">Meta</button>
      <button type="button" class="btn btn-secondary"data-font-class="text-other">Other?</button>
    </div>
  </div>
  <div id="typo-switch">
    <div class="row m-t-3">
      <div class="col-sm-8">
        <h1>Réforme de la protection civile</h1>

        <h2>Vers une organisation simplifiée pour plus d’efficience</h2>

        <p>Le processus de modernisation de la Protection civile vaudoise, initié il y a plusieurs années, a été définitivement accepté en novembre 2014 par le Grand Conseil vaudois qui a approuvé à l’unanimité le projet de modification de la Loi d’exécution de la législation fédérale sur la protection civile (LVLPCi) du 11 septembre 1995. La nouvelle loi définit une réorganisation de la Protection civile en 10 Organisations régionales de Protection civile (ORPC) calquées sur le découpage des districts.</p>

        <p>Cette réforme vise à moderniser et améliorer la structure de la Protection civile vaudoise (PCI VD) pour lui permettre de répondre aux risques et dangers actuels et futurs, tout en garantissant la même qualité de prestation à l’ensemble des citoyens du canton.</p>

        <h3>Projet adapté à la réalité sécuritaire d'aujourd'hui</h3>
        <p>Mandaté par le Conseil d’Etat du canton de Vaud, le Service de la sécurité civile et militaire (SSCM), en étroite collaboration avec les partenaires sécuritaires ainsi que les représentants politiques de l’échelon cantonal et communal, a développé un projet de loi visant à adapter la PCi VD à la réalité d’aujourd’hui et aux risques et menaces identifiés.</p>

        <h2>10 régions</h2>
        <p>Les régions de Protection civile conserveront une importante autonomie dans la marche des affaires régionales, tout en remplissant leurs missions de base. Ces missions, ainsi que les axes stratégiques, la standardisation et la qualité des prestations pour l’ensemble du canton seront quant à eux prédéfinis par le service en charge de la protection civile en collaboration avec les présidents des comités directeurs (CODIR), assurant ainsi à chaque citoyen des prestations de base uniformes sur l’ensemble du territoire cantonal.</p>

        <p>Sur le plan opérationnel, les commandants des ORPC répondront tactiquement et techniquement au Commandant cantonal de la PCi VD. Le canton continuera d’assumer les responsabilités suivantes : diriger l’institution, assurer la formation de base et celle des cadres, assurer la logistique standardisée, garantir la disponibilité opérationnelle, ainsi que l’alarme à la population.</p>

        <p>Un détachement cantonal complète cette organisation en répondant aux besoins spécifiques du canton et en appuyant les ORPC selon le principe de subsidiarité. Son inscription formelle dans la loi répond à une volonté de légitimité et de transparence de cet outil cantonal et de ses prestations. </p>

        <h3>Protection civile 2015+</h3>
        <p>En outre, le projet de loi intègre – notamment en termes de baisse d’effectif et d’interopérabilité cantonale – les mesures proposées dans le rapport du Conseil fédéral sur la stratégie de la protection de la population et de la protection civile 2015+.</p>

        <p>Grâce à l’entrée en vigueur de cette nouvelle loi, la Protection civile peut renforcer son rôle au sein du système sécuritaire vaudois, en prenant en compte le nécessaire équilibre entre ressources et moyens.</p>
      </div>
      <div class="col-sm-4">
        asdf
      </div>
    </div>
  </div>
</div>

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
