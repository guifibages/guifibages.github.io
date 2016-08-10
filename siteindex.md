---
layout: default
title: "Index"
menu: true
---

# Pàgines

{% for page in site.pages %}
{% if page.title and page.menu == null %}
- [{{ page.title }}]({{ page.url | prepend: site.baseurl }})
{% endif %}
{% endfor %}

# Documentació

{% for file in site.static_files %}
{% assign prefix = file.path | truncate: 6, '' | remove_first: '/'%}
{% if prefix == "files" %}
- [{{ file.path }}]({{ file.path }})
{% endif %}
{% endfor %}
