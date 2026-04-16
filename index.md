---
layout: default
---

# LAMA-WeST-Lab's Website
<p class="home-intro">The LAMA-WeST Lab (Web, Semantics and Text) conducts fundamental research in knowledge-centric artificial intelligence, focusing on how language models can represent and reason over structured knowledge. Its work explores the integration of <b>neural and symbolic AI</b>, with a central emphasis on mapping natural language to formal representations (e.g., SPARQL) for principled reasoning over <b>knowledge graphs and ontologies</b>.</p>

<p class="home-intro">A key direction is the study of <b>nonparametric large language models (LLMs)</b>, where knowledge is dynamically retrieved from external sources rather than stored solely in model parameters. This enables more <b>interpretable, controllable, and grounded generation</b>, while raising core questions about memory, inference, and generalization.</p>

<p class="home-intro">The lab also investigates the foundations of <b>LLM safety and reliability</b>, including knowledge verification and factuality checking. Its research addresses<b> hallucination reduction</b>, bias mitigation, and the validation of outputs against structured knowledge, contributing to more <b>transparent, robust, and trustworthy AI systems</b>.</p>

<p class="home-intro">Application domains include law, medicine, and oncology, which serve as testbeds for developing precise, explainable, and verifiable interactions between language and complex knowledge systems.</p>

<p class="home-intro">Our lab is funded through government and industry institutions including NSERC, FRQS, SSHRC, IVADO and MITACS. Our students are also part of <b>MILA</b>. </p>

<p class="home-intro">Led by <b> Prof. Amal Zouaq</b>, the LAMA-WeST lab is welcoming new collaborations in the academic and industrial community.</p>

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

Our research explores natural language processing, knowledge graphs and machine learning, with applications in education, healthcare and intelligent information systems.

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

We host regular seminars where lab members present ongoing projects, new results and other topics in natural language processing and AI.

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

Our team brings together students, postdoctoral researchers and collaborators interested in natural language processing, semantic web technologies and applied AI.

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

