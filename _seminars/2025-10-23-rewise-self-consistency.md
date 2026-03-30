---
title: "ReWiSe: Relation-Wise Self-consistency for LLM Probing"
authors:
  - edouard-albert-roulhac
  - arnaud-delage-reid
featured: false
tags:
  - llm-probing
  - self-consistency
  - constrained-generation
  - knowledge-graphs
reading_paper: "Fine-Tuning or Retrieval? Comparing Knowledge Injection in LLMs"
reading_paper_url: "https://arxiv.org/pdf/2312.05934"
---

## ReWiSe: Relation-Wise Self-consistency for LLM Probing

*Speakers: Édouard Albert Roulhac, Arnaud Delage Reid*

**Topics:** LLM probing, self-consistency & Constrained Text Generation

### Abstract

Large Language Models (LLMs) learn facts and general knowledge from unstructured data. Evaluating the knowledge within an LLM and extracting it from its parametric memory are challenging tasks as models hallucinate and use a stochastic generation process. The LM-KBC competition challenges participants to propose an approach to construct a Knowledge Graph with an LLM and no external corpus. In this work, we propose a new approach called ReWiSe which uses chain-of-thought reasoning and relation-wise self-consistency. We create a synthetic chain-of-thought dataset with reasoning paths designed for the limited set of relations in the challenge. This synthetic dataset is then used as few-shot samples to make predictions. Chain-of-Thought reasoning provides gains for relations such as countryLandBordersCountry, where structured strategies (e.g., geographic enumeration) guide the model toward more complete answers. We finally propose to adapt self-consistency with a relation-wise approach that adapts to relation cardinality and schema. Our results show that relation-wise self-consistency leads to strong performance gains on the LM-KBC benchmark. Using 20 sampled generations, ReWiSe won the 2025 edition of LM-KBC with a Macro-F1 score of 44% (the baseline is 21%). The implementation is available at https://github.com/Lama-West/ReWiSe.
