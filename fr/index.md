---
---

<p class="home-intro">Le laboratoire LAMA-WeST (Web, Sémantique et Texte) mène des recherches fondamentales en intelligence artificielle centrée sur les connaissances, en s'intéressant à la façon dont les modèles de langue peuvent représenter des connaissances structurées et raisonner sur celles-ci. Ses travaux explorent l'intégration de l'<b>IA neuronale et symbolique</b>, avec un accent particulier sur la traduction du langage naturel vers des représentations formelles (p. ex. SPARQL) afin de raisonner de manière rigoureuse sur des <b>graphes de connaissances et des ontologies</b>.</p>

<p class="home-intro">Un axe central est l'étude des <b>grands modèles de langue (LLM) non paramétriques</b>, où les connaissances sont récupérées dynamiquement dans des sources externes plutôt que d'être stockées uniquement dans les paramètres du modèle. Cette approche permet une <b>génération plus interprétable, contrôlable et ancrée</b>, tout en soulevant des questions fondamentales sur la mémoire, l'inférence et la généralisation.</p>

<p class="home-intro">Le laboratoire étudie aussi les fondements de la <b>sûreté et de la fiabilité des LLM</b>, notamment la vérification des connaissances et des faits. Ses recherches portent sur la <b>réduction des hallucinations</b>, l'atténuation des biais et la validation des sorties par rapport à des connaissances structurées, afin de contribuer à des <b>systèmes d'IA plus transparents, robustes et dignes de confiance</b>.</p>

<p class="home-intro">Les domaines d'application comprennent le droit, la médecine et l'oncologie, qui servent de bancs d'essai pour développer des interactions précises, explicables et vérifiables entre le langage et des systèmes de connaissances complexes.</p>

<p class="home-intro">Notre laboratoire est financé par des organismes gouvernementaux et industriels, dont le CRSNG, le FRQS, le CRSH, IVADO et MITACS. Nos étudiants font aussi partie de <b>Mila</b>.</p>

<p class="home-intro">Dirigé par la <b>professeure Amal Zouaq</b>, le laboratoire LAMA-WeST est ouvert à de nouvelles collaborations avec les milieux universitaire et industriel.</p>

{% include section.html %}


## Nouvelles

{% include list.html data="news" component="post-excerpt" filter="featured == true" %}

{%
  include button.html
  link="news"
  text="Voir toutes les nouvelles"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## Séminaires à la une

{% include list.html data="seminars" component="seminar-excerpt" filter="featured == true" %}

{% 
  include button.html
  link="seminars"
  text="Voir tous les séminaires"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

{% capture text %}

Nos recherches portent sur le traitement automatique des langues, les graphes de connaissances et l'apprentissage automatique, avec des applications en éducation, en santé et dans les systèmes d'information intelligents.

{%  
  include button.html
  link="research"
  text="Voir nos publications"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%  
  include feature.html
  image="images/papers/hangman_main.jpg"
  link="research"
  title="Notre recherche"
  text=text
%}

{% capture text %}

Nous organisons régulièrement des séminaires où les membres du laboratoire présentent leurs projets en cours, de nouveaux résultats et d'autres sujets en traitement automatique des langues et en IA.

{%  
  include button.html
  link="seminars"
  text="Parcourir nos séminaires"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%  
  include feature.html
  image="images/papers/sparql.jpg"
  link="seminars"
  title="Nos séminaires"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

Notre équipe réunit des étudiants, des chercheurs postdoctoraux et des collaborateurs qui s'intéressent au traitement automatique des langues, aux technologies du Web sémantique et à l'IA appliquée.

{%  
  include button.html
  link="team"
  text="Rencontrer notre équipe"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%  
  include feature.html
  image="images/team/team-selfie.jpg"
  link="team"
  title="Notre équipe"
  text=text
%}
