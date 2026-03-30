---
---

# LAMA-WeST-Lab's Website

<p class="home-intro">The LAMA-WeST lab specializes in all aspects of natural language processing and artificial intelligence, with a special focus on Semantic Web technologies. Semantic Web knowledge bases can represent a large-scale source of knowledge for artificial intelligence models and can be used, among other things, to ensure the validity of information, and the explainability of artificial intelligence models.</p>

<p class="home-intro">Our various research projects tackle challenges related to representation learning, natural language interfaces and question answering, automated reasoning, knowledge base learning and alignment, ontology learning, knowledge engineering and modeling, and information extraction and generation to name a few.</p>

<p class="home-intro">Our lab is funded through government and industry institutions including NSERC, FRQS, SSHRC, IVADO and MITACS. It provides a fertile ground and learning opportunities for students and visiting researchers.</p>

<p class="home-intro">Led by Prof. Amal Zouaq, The LAMA-WeST lab is welcoming new collaborations in the academic and industrial community.</p>

{% include section.html %}


## News

{% include list.html data="news" component="post-excerpt" filter="featured == true" %}

{%
  include button.html
  link="news"
  text="View all news"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## Featured Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="featured == true" %}

{% 
  include button.html
  link="seminars"
  text="View all seminars"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

{% capture text %}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

{%
  include button.html
  link="research"
  text="See our publications"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/papers/hangman_main.jpg"
  link="research"
  title="Our Research"
  text=text
%}

{% capture text %}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

{%
  include button.html
  link="seminars"
  text="Browse our seminars"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/papers/sparql.jpg"
  link="seminars"
  title="Our Seminars"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

{%
  include button.html
  link="team"
  text="Meet our team"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/team/team-selfie.jpg"
  link="team"
  title="Our Team"
  text=text
%}

