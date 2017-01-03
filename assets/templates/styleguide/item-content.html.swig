{% macro default(type, content) %}

{% import 'item-macros.html.swig' as item %}
{% set path = '../../components/' + type + 's/' + content.name + '.html.swig' %}

<div class="styleguide-description clearfix" data-styleguide-toggle="notes">
  <div class="float-xs-right">
    {% if content.status %}
      {% include '../styleguide/status.html.swig' with { status: data.status.component[content.status] } %}
    {% endif %}
    {% if content.bootstrap %}
      <a class="btn btn-secondary btn-sm ml-1" href="{{ content.bootstrap }}"><span class="fa fa-book" aria-hidden="true"></span> Bootstrap doc</a>
    {% endif %}
  </div>

  {% if content.notes %}
    <div class="styleguide-item-notes">
    {{content.notes|markdown|raw}}
    </div>
  {% endif %}

</div>

{% if content.variants %}
  <ul class="styleguide-tabs nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#{{content.name}}-default" role="tab">Default</a>
    </li>
  {% for slug, variant in content.variants %}
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#{{slug}}" role="tab">{{variant}}</a>
    </li>
  {% endfor %}
  </ul>
{% endif %}

{% if content.variants %}
  <div class="tab-content styleguide-tab-content">
    <div class="styleguide-tab-pane tab-pane active" id="{{content.name}}-default">
      {{ item.preview(content, path) }}
      {{ item.code(path) }}
    </div>
    {% for slug, variant in content.variants %}
      <div class="styleguide-tab-pane tab-pane" id="{{slug}}">
        {{ item.preview(content, path, slug) }}
        {{ item.code(path, slug) }}
      </div>
    {% endfor %}
  </div>
{% else %}
  {{ item.preview(content, path) }}
  {{ item.code(path) }}
{% endif %}


{% endmacro %}
