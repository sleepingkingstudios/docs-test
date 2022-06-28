---
---

# Planets

{% assign version = page.dir | replace: "versions/", "" | replace: "/planets/", "" | replace: "/", "" %}

Directory
: "{{ page.dir }}"

Version
: "{{ version | default: "current" }}"

There are {{ site.planets.size }} planets.

{% for planet in site.planets %}
{% include planet.md show_all=true %}
{% endfor %}
