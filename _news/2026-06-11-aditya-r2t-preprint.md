---
title: "Rotate2Think: Geometric Priming via Orthogonal Rotation to Improve Language Model Reasoning"
author: aditya-sharma
tags:
  - paper
  - preprint
  - arxiv
  - thinking
  - reasoning
  - llm
---

We are excited to share the preprint of our new paper "Rotate2Think: Geometric Priming via Orthogonal Rotation to Improve Language Model Reasoning" by Aditya Sharma, Christopher J. Pal, and Amal Zouaq.

Reasoning models are powerful, they "think" through a problem before answering. But what actually distinguishes a model's hidden representations while #thinking from those of the plain input prompt? We found something striking: input embeddings and thinking embeddings each collapse into a narrow cone, but the two cones point in different directions, and the input-to-thinking transition is essentially a rotation.

We introduce R2T (Rotate2Think), a training-free method that exploits this geometry. Instead of fine-tuning or spending extra compute, R2T fits a single rotation from a handful of solved examples, then injects one synthetic "thinking" vector at the start of the reasoning trace, geometrically priming the model toward stronger reasoning.

Our results? Consistent accuracy gains across model families and benchmarks at comparable token budgets, with base models sometimes surpassing their own full reasoning mode, and the rotation, fit purely on text, even transfers zero-shot to visual math.

Read the preprint on arXiv here: https://arxiv.org/abs/2606.09873

![r2t](/images/papers/rotate2think.png)
