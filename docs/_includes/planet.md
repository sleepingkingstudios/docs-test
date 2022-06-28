{% capture version_prefix -%}_planets{% endcapture -%}{% assign null = "_" %}
{% capture version_suffix -%}{{ planet.name | downcase }}.md{%- endcapture -%}
{% assign planet_version = planet.relative_path | replace: version_prefix, "" | replace: version_suffix, "" | replace: "/", "" %}

{% if include.show_all or planet_version == version %}
## {{ planet.name }}

Version
: "{{ planet_version | default: "current" }}"

{{ planet.content }}

{% if planet.satellites %}
### Satellites

{% for satellite in planet.satellites %}
{%- capture satellite_url -%}{{ site.baseurl }}{% if version.size > 0 %}/versions/{{ version }}{% endif %}/planets/#{{ satellite | downcase }}{% endcapture %}
- [{{ satellite }}]({{satellite_url}})
{% endfor %}
{% endif %}
{% endif %}
