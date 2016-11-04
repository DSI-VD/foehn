---
title: Office des poursuites
name: office-des-poursuites
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

<div class="vd-bg-pattern-gray py-1">
  <div class="container">
        {% include "../molecules/breadcrumb.html.swig" %}
        <h1>Office des poursuites</h1>
  </div>
</div>

<div class="container">
  <div class="row mt-3">

    <div class="col-md-8">

      <section>
        <h2 class="sr-only">Présentations</h2>
        <p>Les offices des poursuites et des faillites sont chargés de l'application, dans le canton, de <a href="http://www.admin.ch/ch/f/rs/c281_1.html">la loi fédérale du 11 avril 1889 sur la poursuite pour dettes et la faillite</a>.</p>

        <h3>Ses missions principales</h3>
        <ul>
          <li>enregistre les réquisitions de poursuite ou de continuation de la poursuite</li>
          <li>fait notifier aux débiteurs les commandements de payer</li>
          <li>enregistre les oppositions</li>
          <li>encaisse les paiements effectués par les débiteurs et remets les fonds aux créanciers après déduction des frais</li>
          <li>exécute les saisies</li>
          <li>procède à la réalisation des biens saisis</li>
          <li>distribue aux créanciers le produit de la vente des biens</li>
          <li>délivre les éventuels actes de défaut de biens</li>
        </ul>

        <p>
          L'office des poursuites tient à jour différents registres et en délivre des extraits à ceux qui rendent leur intérêt vraisemblable. Il délivre également des attestations d'absence de poursuite utiles aux démarches administratives (location d'appartement, demande de crédit auprès d'une banque, etc.).  L'office des poursuites tient en outre le registre des pactes de réserve de propriété.
        </p>

        <ul class="list-inline">
          <li class="list-inline-item"><a href="../recherche-office-poursuites" class="btn btn-primary">Trouver l’office des poursuites compétent</a></li>
          <li class="list-inline-item"><a href="#" class="btn btn-primary">Trouver l’office des faillites compétent</a></li>
        </ul>
      </section>

      <hr class="vd-separator vd-separator-gray-bars vd-separator-wide">

      <section>
        <h2 class="vd-section-title">Actualités</h2>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Nomination à l'Office des poursuites du district du Jura - Nord vaudois</a></h3>
          <div class="vd-teaser-content">
            <p>Le Secrétaire général a nommé Mme Catherine DESPONT en qualité de substitut du préposé de l'Office des poursuites du district du Jura - Nord vaudois.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Nomination à l'Office des poursuites du district de Lavaux - Oron</a></h3>
          <div class="vd-teaser-content">
            <p>La Cour administrative a nommé M. Olivier HENNEBERGER en qualité de préposé de l'Office des poursuites du district de Lavaux - Oron.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Nomination à l'Office des poursuites du district de Morges</a></h3>
          <div class="vd-teaser-content">
            <p>Le Secrétaire général a nommé Mme Claire-Lise PELLET en qualité de substitut ad hoc du préposé à l'Office des poursuites du district de Morges.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

        <article class="vd-teaser">
          <h3 class="vd-teaser-title text-sm-center mb-2"><a href="#0">Nomination à l'Office des faillites de l'arrondissement de La Côte</a></h3>
          <div class="vd-teaser-content">
            <p>Le Secrétaire général a nommé  Mme Florence FREYMOND FREY en qualité de substitut du préposé à l'Office des faillites de l'arrondissement de La Côte.</p>
            <a href="#0" class="vd-teaser-meta">14.06.2016 :: 1M</a>
          </div>
          <hr>
        </article>

      </section>

      <section>
        <h2 class="vd-section-title">Projets</h2>

        <article>
          <h3 class="ml-3">Nouveau site internet pour les ventes et enchères des
offices des poursuites et des faillites</h3>
          <div class="ml-3">
            <div class="row">
              <picture class="push-md-6 col-md-6">
                {% for breakpoint in data.breakpoints %}
                  <source {% if breakpoint.value > 0 %}media="(min-width: {{ breakpoint.value }}px)"{% endif %} srcset="http://placehold.it/{{ breakpoint.image_size.teaser[0] }}x{{ breakpoint.image_size.teaser[1] }} 1x, http://placehold.it/{{ breakpoint.image_size.teaser[0] * 2 }}x{{ breakpoint.image_size.teaser[1] * 2 }} 2x">
                {% endfor %}
                <img class="img-fluid" src="https://placehold.it/600x300" alt="article image" />
              </picture>
              <div class="pull-md-6 col-md-6">
                <p>Toutes les ventes mobilières et immobilières organisées par les offices des poursuites et des faillites du canton de Vaud sont publiées sur le site internet www.vd.ch/ventes-poursuites-faillites. Ce site, qui intéresse un très large public, a été modernisé et offre désormais de nombreuses nouvelles fonctionnalités.</p>
              </div>
            </div>
          </div>
          <p>
            <a href="#">lien</a>
          </p>
        </article>

      </section>

      <section>
        <h2 class="vd-section-title">Organisation</h2>

        <div class="row">
          <div class="col-md-4">
            <img src="http://placehold.it/150x150" class="rounded-circle">
          </div>
          <div class="col-md-8">
            <h3>Marc Meurizet</h3>
            <p>Responsable  des offices de poursuites</p>
            <p><a href="">Biographie</a></p>
          </div>
        </div>
      </section>

      <section>
        <h2 class="vd-section-title">Bases légales</h2>

        <ul>
          <li>Loi fédérale sur la poursuite pour dettes et la faillite (<a href="">LP</a>)</li>
          <li>Loi d'application dans le Canton de Vaud de la loi fédérale sur la poursuite pour dettes et la faillite (<a href="">LVLP</a>)</li>
          <li>Arrêté d'exécution de la loi d'application dans le Canton de Vaud de la loi fédérale sur la poursuite pour dettes et la faillite (<a href="">ALVLP</a>)</li>
          <li>Règlement concernant les autorités et organes extraordinaires chargés d'ordonner et d'exécuter un séquestre en dehors des jours et des heures officiels d'ouverture des offices judiciaires (<a href="">RSq</a>)</li>
          <li>Ordonnance sur les émoluments perçus en application de la loi fédérale sur la poursuite pour dettes et la faillite (<a href="">OELP</a>)</li>
          <li>Ordonnance du Tribunal fédéral sur la réalisation forcée des immeubles (<a href="">ORFI</a>)</li>
          <li>Ordonnance sur l'administration des offices de faillite (<a href="">OAOF</a>) </li>
        </ul>
      </section>

    </div>

    <div class="col-md-4">
      <h2 class="vd-section-title">Contact</h2>
      <p>Tous les offices des poursuites du canton</p>

      <p>
        <a href="../recherche-office-poursuites" class="btn btn-primary btn-sm vd-btn-chevron-r">Contact</a>
      </p>

      <h2 class="vd-section-title">Autres prestations liées</h2>
      <ul class="vd-list-links">
        <li><a href="#">Obtenir un extrait du registre des poursuites pour soi-même</a></li>
        <li><a href="#">Obtenir un extrait des registres des poursuites sur un tiers</a></li>
      </ul>
    </div>

  </div>
</div>

{% include "../organisms/footer.html.swig" %}
