---
title: Documents
name: documents
collection: pages
styleguide: false
layout: page.html.swig
---

{% include "../organisms/header.html.swig" %}

{% include "../molecules/secure-tabs.html.swig" %}

<div class="container">
  <div class="row mt-3">
    <div class="col-md-8">

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

      <h2>Documents</h2>

    </div><!-- ./.col-md-8 -->

    <div class="col-md-4">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit impedit molestias ipsam?</p>
    </div>
  </div><!-- /.row -->
</div>

{% include "../organisms/footer.html.swig" %}
