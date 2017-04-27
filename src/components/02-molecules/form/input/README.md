# A note on the `required` attribute

You may be aware that there is an HTML5 `required` attrib- ute. Why aren’t we using this ? Usually it is better to use the HTML5 base semantics rather than the WAI-ARIA extension, but only if vendor (read: browser and screen reader) support is acceptable.

The `required` attribute is [not implemented uniformly across browsers](http://caniuse.com/#feat=form-validation). It also tends to invoke an undesirable feature: marking empty required fields as invalid from the outset. For our purposes this is rather verbose and aggressive.

# Triggering the numerical keyboard

The only way to trigger the numerical keyboard on mobile is to use the following `input`:

```html
<input type="number" pattern="[0-9]*">
```

![Numerical Keyboard](/components/raw/input/numerical-keyboard.png)

# `autocomplete` attribute

This attribute indicates whether the value of the control can be automatically completed by the browser. It may be a good practice to use this attribute with known data, such as a form where the user must enter his or her contact information.

More inforamtion in [Autofilling form controls: the autocomplete attribute](https://www.w3.org/TR/html5/forms.html#autofilling-form-controls:-the-autocomplete-attribute).

```
<form action="" autocomplete="on">
  <label for="name">Nom</label>
  <input id="name" type="text" autocomplete="name" />

  <label for="email">Email</label>
  <input id="email" type="email" autocomplete="email" />

  <label for="phone">Téléphone</label>
  <input id="phone" type="tel" autocomplete="tel" />

  <label for="postal-code">NPA</label>
  <input id="postal-code" type="text" autocomplete="postal-code" />

  <label for="password">Password</label>
  <input id="password" type="password" autocomplete="new-password" />

  <input type="submit" />

</form>
```
