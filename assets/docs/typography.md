---
title: Typography
name: typography
collection: docs
styleguide: true
---

## Fonts used

<br>
<p class="text-graphik" style="font-weight: 400;">Graphik Light - normal 400</p>
<p class="text-graphik" style="font-weight: 400; font-style: italic;">Graphik LightItalic - italic 400</p>
<p class="text-graphik" style="font-weight: 500;">Graphik Medium - normal 500</p>
<br>
<p class="text-produkt" style="font-weight: 300;">Produkt Light - normal 300</p>
<p class="text-produkt" style="font-weight: 300; font-style: italic;">Produkt LightItalic  - italic 300</p>
<p class="text-produkt" style="font-weight: 500;">Produkt Medium - normal 500</p>
<p class="text-produkt" style="font-weight: 700;">Produkt Bold - normal 700</p>

<hr class="my-3">

## [Webfont Loader](https://github.com/typekit/webfontloader) code

Insert this code in your base template, to invoke all the needed fonts.

```html
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<script>
WebFont.load({
  custom: {
    families: ['Graphik:n4,i4,n5', 'Produkt:n3,i3,n5,n7'],
    urls: ['{{data.path}}build/fonts/fonts.css']
  }
});
</script>
```

<hr class="my-3">
<div class="bs-docs-section mt-3">
  <div class="mt-3"></div>

  <!-- Headings -->

  <div class="row">
    <div class="col-lg-12">
      <h1 class="display-1">Display 1</h1>
      <h1 class="display-2">Display 2</h1>
      <h1 class="display-3">Display 3</h1>
      <h1 class="display-4">Display 4</h1>
    </div>
  </div>
  <hr class="my-3">
  <div class="row">
  <div class="col-lg-6">
    <div class="bs-component">
      <h1>Heading 1</h1>
      <h2>Heading 2</h2>
      <h3>Heading 3</h3>
      <h4>Heading 4</h4>
      <h5>Heading 5</h5>
      <h6>Heading 6</h6>
      <p class="lead">Lead paragraph. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
      <p>Standard paragraph. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
  </div>
    <div class="col-lg-6">
      <h2>Inline text elements</h2>
      <p>You can use the mark tag to <mark>highlight</mark> text.</p>
      <p><del>This line of text is meant to be treated as deleted text.</del></p>
      <p><s>This line of text is meant to be treated as no longer accurate.</s></p>
      <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>
      <p><u>This line of text will render as underlined</u></p>
      <p>This is <a href="#0">a link</a> inside a paragraph.</p>
    </div>
  </div>
  <hr class="my-3">
  <div class="row">
    <div class="col-lg-6">
      <div class="bs-component">
        <h2>Example body text</h2>
        <p>Nullam quis risus eget <a href="#0">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
        <p><small>This line of text is meant to be treated as fine print.</small></p>
        <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>
        <p>The following snippet of text is <em>rendered as italicized text</em>.</p>
        <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="bs-component">
        <h2>Emphasis classes</h2>
        <p class="text-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</p>
        <p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
        <p class="text-warning">Etiam porta sem malesuada magna mollis euismod.</p>
        <p class="text-danger">Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p class="text-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
        <p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
      </div>
    </div>
  </div>

  <!-- Blockquotes -->

  <div class="row">
    <div class="col-lg-12">
      <h2 id="type-blockquotes">Blockquotes</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="bs-component">
        <blockquote class="blockquote">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
        </blockquote>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="bs-component">
        <blockquote class="blockquote blockquote-reverse">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
        </blockquote>
      </div>
    </div>
  </div>
</div>
