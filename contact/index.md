---
title: Join
nav:
  order: 5
  tooltip: Join our team
---

# {% include icon.html icon="fa-regular fa-envelope" %}Prospective Students

We are currently looking for strong and motivated students interested in pursuing research in Natural Language Processing (NLP), machine learning, and computational linguistics. If you are interested in joining our laboratory, please reach out to us with your CV and a brief description of your research interests.

## Our Research Areas

Our lab is interested in several key areas of NLP and machine learning:

- **Natural Language Processing** - text understanding, generation, language models, and semantic analysis
- **Machine Learning** - deep learning architectures, transformers, and neural network optimization
- **Data Science** - large-scale text data analysis and computational approaches to linguistic problems
- **Applied NLP** - practical applications of NLP in real-world problems

Visit our [Research](../research/) page for a detailed overview of our current seminars and publications.

## Essential Reading

Before applying, we recommend familiarizing yourself with these foundational resources:

- [Speech and Language Processing (3rd Edition)](https://web.stanford.edu/~jurafsky/slp3/) - Comprehensive guide to NLP fundamentals

## Extra Reading

To deepen your understanding of the field:

- [Introduction to Natural Language Processing](https://mitpress.mit.edu/9780262042840/introduction-to-natural-language-processing/) - MIT Press textbook on NLP theory and practice

## General Expectations

We expect prospective students to:

- Have a solid understanding of **machine learning fundamentals** before applying
- Demonstrate strong **Python programming skills** and familiarity with deep learning frameworks (PyTorch, TensorFlow, or JAX)
- Be familiar with basic **NLP concepts** and transformer-based language models
- Show genuine interest in the research topics listed above
- Be prepared to discuss your background and research interests in interviews

Some of these requirements may be waived for exceptional candidates with strong fundamentals in related areas.

## We Encourage Applications From

Women and underrepresented minorities are especially encouraged to apply to our lab. We value diverse perspectives and experiences that contribute to innovative research in NLP.

{%
  include button.html
  type="email"
  text="jane@smith.com"
  link="jane@smith.com"
%}
{%
  include button.html
  type="phone"
  text="(555) 867-5309"
  link="+1-555-867-5309"
%}
{%
  include button.html
  type="address"
  tooltip="Our location on Google Maps for easy navigation"
  link="https://www.google.com/maps"
%}

{% include section.html %}

{% capture col1 %}

{%
  include figure.html
  image="images/photo.jpg"
  caption="Lorem ipsum"
%}

{% endcapture %}

{% capture col2 %}

{%
  include figure.html
  image="images/photo.jpg"
  caption="Lorem ipsum"
%}

{% endcapture %}

{% include cols.html col1=col1 col2=col2 %}

{% include section.html dark=true %}

{% capture col1 %}
Lorem ipsum dolor sit amet  
consectetur adipiscing elit  
sed do eiusmod tempor
{% endcapture %}

{% capture col2 %}
Lorem ipsum dolor sit amet  
consectetur adipiscing elit  
sed do eiusmod tempor
{% endcapture %}

{% capture col3 %}
Lorem ipsum dolor sit amet  
consectetur adipiscing elit  
sed do eiusmod tempor
{% endcapture %}

{% include cols.html col1=col1 col2=col2 col3=col3 %}
