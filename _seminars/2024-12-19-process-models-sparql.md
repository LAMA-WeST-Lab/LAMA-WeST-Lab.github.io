---
title: "Leveraging LLMs to Extract Process Models from Emails & Post-Generation Memory Retrieval for SPARQL"
authors:
  - alexis-brissard
  - aditya-sharma
status: past
featured: false
tags:
  - information-extraction
  - process-mining
  - process-modeling
  - prompting
  - sparql
  - memory-retrieval
reading_paper: "Contrastive Decoding: Open-ended Text Generation as Optimization"
reading_paper_url: "https://arxiv.org/abs/2210.15097"
---

## Multiple Presentations

*Speakers: Alexis Brissard, Aditya Sharma*

**Topics:** Information Extraction, Process Mining & Modeling, Prompting

### Presentation 1: Leveraging LLMs to Extract Process Models from Emails + Compute Canada Tutorial by Gaya

Process Modeling (PMo) focuses on constructing process models from various data sources, including organizational documents such as process descriptions. However, it has yet to be consistently applied to emails, thereby overlooking a critical source of process knowledge. To address this gap, our study integrates Process Information Extraction (PIE) and Process Model Generation (PMG) to develop a PMo method capable of producing richer and more comprehensive process models. We evaluate our method quantitatively using the PET dataset and the Process Modeling Benchmark, demonstrating that it outperforms existing PMo approaches. Furthermore, we consider the unique challenges of applying PMo to emails and apply our method on the large-scale Enron corpus, sharing both our findings and the resulting data.

### Presentation 2: Post-Generation Memory Retrieval for SPARQL Query Generation using Pre-trained Language Models

Pre-trained large language models (PLMs) are frequently employed for SPARQL query generation, but this reliance can lead to challenges such as hallucinations and out-of-distribution errors from generating knowledge graph (KG) elements like Uniform Resource Identifiers (URIs) using their internal parametric knowledge. The addition of non-parametric memory to manage KB elements can greatly improve the accuracy of SPARQL query generation. This talk explores PGMR (Post-Generation Memory Retrieval), a modular architecture where pre-trained language models (PLMs) generate SPARQL queries, and a memory module retrieves KG elements. Our experiments show that this architecture improves the quality of SPARQL queries by reducing URI hallucinations.
