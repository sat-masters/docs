---
title: "{{title}}"
aliases:
  - {{title}}
  - {{citekey}}
url: {{url}}
doi: {{doi}}
citekey: {{citekey}}
keywords: {{allTags}}
type: paper
created:
updated:
---

# Paper Details
% TODO: do later %

---
{% for note in notes -%}
  {{note.note}}

[Edit note]({{note.desktopURI}})

---
{% endfor %}
# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning              |
| ----------------------------------------------- | -------------------- |
| <mark class="hltr-red">Red</mark>               | Disagree With Author |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments     |
| <mark class="hltr-green">Green</mark>           | Aim to replicate     |

{% for annotation in annotations -%}
  {%- if annotation.annotatedText -%}
- <mark class="hltr-{{annotation.colorCategory | lower}}">"{{annotation.annotatedText}}"</mark> [Page {{annotation.page}}]({{annotation.desktopURI}}){{'\n'}}
  {%- endif %}
  {%- if annotation.imageRelativePath -%}
- ![{{annotation.imageCaption}}]({{annotation.imageRelativePath}}){{'\n'}}
  {%- endif %}
  {%- if annotation.comment -%}
{{'\t'}} - {{annotation.comment}}
  {%- endif %}
  
{% endfor %}

