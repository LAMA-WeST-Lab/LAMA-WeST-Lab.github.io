---
---

# LAMA-WeST-Lab's Website

<p class="home-intro">The LAMA-WeST Lab (Web, Semantics and Text) advances fundamental research in knowledge-centric artificial intelligence, focusing on how language models can represent, access, and reason over structured knowledge. Its work explores the theoretical integration of neural and symbolic AI, developing methods that connect natural language with formal representations such as knowledge graphs and ontologies. A central problem is the mapping between language and logic (e.g., natural language to SPARQL), enabling principled reasoning over complex information spaces.</p>

<p class="home-intro">A key research direction is the study of nonparametric large language models (LLMs), where knowledge is not only encoded in model parameters but dynamically retrieved from external sources. This paradigm raises fundamental questions about memory, generalization, and inference, and the lab develops approaches that combine retrieval, constraints, and symbolic structure to produce more interpretable and controllable models. These methods also support constrained generation, where outputs must satisfy formal or ontological requirements.</p>

<p class="home-intro">The lab further investigates foundations of LLM safety and reliability, including knowledge verification and factuality checking. Its work examines how model outputs can be validated against structured knowledge, how hallucinations can be formally characterized and reduced, and how bias and uncertainty can be identified and mitigated. This contributes to a broader theoretical framework for trustworthy and verifiable AI systems, where correctness and transparency are first-class concerns.</p>

<p class="home-intro">Application domains include knowledge-intensive areas such as law, medicine, and oncology, which serve as testbeds for these foundational ideas. Across these domains, the lab’s goal is to enable precise, explainable, and verifiable interactions between language and knowledge, grounded in solid theoretical principles.</p>

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

