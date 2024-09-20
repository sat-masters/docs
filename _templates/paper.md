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

# Link to paper

{{markdownNotes}}

# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning              |
| ----------------------------------------------- | -------------------- |
| <mark class="hltr-red">Red</mark>               | Disagree With Author |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments     |
| <mark class="hltr-green">Green</mark>           | Aim to replicate     |

{% for annotation in annotations -%}
  {%- if annotation.annotatedText -%}
    - <mark class="hltr-{{annotation.color | lower}}">"{{annotation.annotatedText}}"</mark> Page {{annotation.page}}
  {%- endif %}
  {%- if annotation.imageRelativePath -%}
    - ![{{annotation.imageCaption}}]({{annotation.imageRelativePath}})
  {%- endif %}
  {%- if annotation.comment -%}
      - {{annotation.comment}}
  {%- endif %}
{% endfor %}

