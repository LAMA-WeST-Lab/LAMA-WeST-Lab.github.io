---
---

# LAMA-WeST-Lab's Website

Welcome to the LAMA-WeST-Lab

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

