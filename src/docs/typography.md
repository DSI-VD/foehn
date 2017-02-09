---
status: draft
---
## Fonts used

- Graphik Light - normal 400
- Graphik LightItalic - italic 400
- Graphik Medium - normal 500

- Produkt Light - normal 300
- Produkt LightItalic  - italic 300
- Produkt Medium - normal 500
- Produkt Bold - normal 700

<hr class="my-3">

## [Webfont Loader](https://github.com/typekit/webfontloader) code

Insert this code in your base template, to invoke all the needed fonts.

```html
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<!-- Instead of using a CDN, you can host yourself the file -->
<script>
WebFont.load({
  custom: {
    families: ['Graphik:n4,i4,n5', 'Produkt:n3,i3,n5,n7'],
    urls: ['{{data.path}}assets/fonts/fonts.css']
  }
});
</script>
```
