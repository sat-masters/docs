---
title: "{{title}}"
aliases:
  - {{title}}
  - {{citekey}}
url: {{url}}
doi: {{DOI}}
citekey: {{citekey}}
keywords: {{allTags}}
type: paper
created:
updated:
---

# Paper Details
|          |                                    |
| -------- | ---------------------------------- |
| Authors  | {{authors}}                        |
| doi      | [{{DOI}}](https://doi.org/{{DOI}}) |
>[!abstract]-
>{{abstractNote}}

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
- <mark class="hltr-{{annotation.colorCategory | lower}}">"{{annotation.annotatedText}}"</mark> [Page {{annotation.page}}]({{annotation.desktopURI}}){#{'\n'}#}
  {%- endif %}
  {%- if annotation.imageRelativePath -%}
- ![{{annotation.imageCaption}}]({{annotation.imageRelativePath}}){#{'\n'}#}
  {%- endif %}
  {%- if annotation.tags%}
{{'\t'}} - {{'#'}}{{annotation.tags | join(', #', 'tag')}}{{'\n'}}
  {%- endif %}
  {%- if annotation.comment -%}
{{'\t'}} - {{annotation.comment}}
  {%- endif %}
  <br>
{% endfor %}

