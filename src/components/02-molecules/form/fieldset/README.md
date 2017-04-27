# When using a `<fieldset>`

Bearing in mind that `<fieldset>`s are pointless without `<legend>`s, you can use the following three rules of thumb to decide if a `<fieldset>` is appropriate.

1. Is there more than one distinct set of fields in total, in the same form or context? *Yes?* Use `<fieldset>`s. *No?* Don’t use `<fieldset>`s.
2. Does a set actually only have one field in it? Yes? You don’t need a `<fieldset>.` *No?* Use a `<fieldset>` if (1) applies.
3. Can you think of a `<legend>` that would make sense or aid comprehension if used with each of the `<fieldset>`’s field labels? *Yes?* Use a `<fieldset>`. *No?* Don’t use a `<fieldset>`.

# How screen readers read `<legend>`

```html
<form role="form" class="sorter" method="get">
  {%
    render '@fieldset', {
      legend: "Sort by",
      "items": [
        {
          "label": "most recent",
          "name": "sort-method",
          "value": "most-recent",
          "checked": true
        },
        {
          "label": "popularity",
          "name": "sort-method",
          "value": "popularity"
        }
      ]
    }
  %}
  {% render '@button--submit' %}
</form>
```

The `<form>` contains a single `<fieldset>` which is used to group the radio options under the label “Sort by”, followed by a submit button. When a radio `<input>` is focused, the `<legend>` content is announced followed by the `<input>`’s `<label>`. To begin with, the first option (“most recent”) is checked. Standard behavior is that only this checked `<input>` is focusable by Tab. Focusing it would trigger the announcement of “Sort by most recent, selected, radio button, one of four.” “Sort by” is the group label; “most recent” is the element label; “selected” is the element state; “radio button” is the element role. The number four is the total number of radio buttons which share a common `name="sort-method`".
