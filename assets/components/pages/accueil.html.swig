---
title: Accueil
name: accueil
collection: pages
styleguide: false
layout: page.html.swig
---
{% include "../organisms/header.html.swig" with {'primary_opened': true, 'logo_alternate': true}   %}

<div class="container mt-3">
  <h1 class="sr-only">Site officiel de l'&Eacute;tat de Vaud</h1>
</div>
<!-- container -->

<div class="container">
  <div class="row">

    <div class="col-md-8">

      <main id="main">
        {% include "../organisms/news-latest.html.swig" with {'news_alternate_news_links': true} %}
      </main>

    </div><!-- /.col-md-8 -->

    <aside class="col-md-4 small">

      <section class="mb-3 hidden-sm-down">
        {% include "../organisms/twitter-feed.html.swig"  %}
      </section>

      <section>
        {% include "../organisms/agenda.html.swig"  %}
      </section>

    </aside><!-- /.col-md-4 -->

  </div><!-- /.row -->
</div><!-- /.container -->

<hr class="vd-separator vd-separator-gray-bars vd-separator-wide mt-3 mb-3">

<div class="container">
  <section>
    <h2 class="vd-section-title">Autorités</h2>

    <div class="vd-btn-tiles mb-1">
      <a href="#" class="btn">Organigramme</a>
      <a href="#" class="btn">Conseil d'État</a>
      <a href="#" class="btn">Grand Conseil</a>
      <a href="../ordre-judiciaire-vaudois" class="btn">Ordre Judiciaire</a>
    </div>

    <p>
      <a href="../autorites/" class="btn btn-primary vd-btn-chevron-r btn-sm">Toutes les autorités</a>
    </p>

  </section>
</div>

{% include "../organisms/footer.html.swig" %}
