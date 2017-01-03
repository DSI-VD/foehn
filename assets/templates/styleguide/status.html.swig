{# pass a status object in the `status` variable #}
<span class="tag tag-{{ status.color }} tag-pill styleguide-tag" data-toggle="tooltip" title="{{ status.description }}">{{ status.label }}
{% if status.icon %}
  <span class="fa fa-{{ status.icon }} fa-lg" aria-hidden="true"></span>
{% endif %}</span>
