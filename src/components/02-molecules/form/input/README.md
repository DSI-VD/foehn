# A note on the `required` attribute

You may be aware that there is an HTML5 `required` attrib- ute. Why aren’t we using this ? Usually it is better to use the HTML5 base semantics rather than the WAI-ARIA extension, but only if vendor (read: browser and screen reader) support is acceptable.

The `required` attribute is [not implemented uniformly across browsers](http://caniuse.com/#feat=form-validation). It also tends to invoke an undesirable feature: marking empty required fields as invalid from the outset. For our purposes this is rather verbose and aggressive.
