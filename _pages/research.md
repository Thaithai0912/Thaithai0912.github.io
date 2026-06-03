---
layout: home
title: "Research"
permalink: /research/
author_profile: false
---

<div class="page-shell">
  <header class="page-hero">
    <nav class="home-nav" aria-label="Primary navigation">
      <a href="/">Home</a>
      <a href="/research/">Research</a>
      <a href="/publications/">Publications</a>
      <a href="/cv/">CV</a>
      <a href="/personal/">Personal</a>
      <a href="/#contact">Contact</a>
    </nav>

    <div class="page-hero-inner">
      <p class="eyebrow">Research</p>
      <h1 class="page-title">AI systems that can read more, remember better, and work in the real world.</h1>
      <p class="page-intro">
        My research centers on long-context language modeling and efficient model
        architecture. I am especially interested in the gap between impressive demos
        and useful systems: how models scale, how they use memory, how they are
        evaluated, and how they can be made practical enough to help people.
      </p>
    </div>
  </header>
</div>

<main class="home-main">
  <section class="home-section compact-section">
    <p class="section-kicker">Research Motivation</p>
    <h2 class="section-title">I care about capability that people can actually use.</h2>
    <p class="section-lede">
      Large language models are powerful, but real tasks often require long documents,
      messy data, limited compute budgets, and careful evaluation. My work approaches
      these challenges from architecture, training, data, and benchmark design.
    </p>

    <div class="research-grid">
      <article class="info-block">
        <h3>Long-context modeling</h3>
        <p>How can models read and reason over contexts far beyond ordinary prompt lengths without losing important details?</p>
      </article>
      <article class="info-block">
        <h3>Efficient model architecture</h3>
        <p>How can attention, recurrence, sparse mechanisms, and linear methods be combined to improve speed, memory, and scalability?</p>
      </article>
      <article class="info-block">
        <h3>Evaluation and data</h3>
        <p>How do we build training data and benchmarks that reveal real reasoning ability instead of surface-level pattern matching?</p>
      </article>
    </div>
  </section>

  <section class="home-section compact-section">
    <p class="section-kicker">Current Direction</p>
    <h2 class="section-title">Long-context systems need both better memory and better engineering.</h2>

    <div class="focus-list">
      <article class="focus-item">
        <span class="focus-index">01</span>
        <div>
          <h3>Hybrid attention for long context</h3>
          <p>I study how sparse and linear mechanisms can be combined so language models remain efficient on very long inputs while preserving useful behavior.</p>
        </div>
      </article>
      <article class="focus-item">
        <span class="focus-index">02</span>
        <div>
          <h3>Memory-efficient architectures</h3>
          <p>I am interested in architectures beyond standard full attention, including recurrent-style models and post-training ways to improve recall.</p>
        </div>
      </article>
      <article class="focus-item">
        <span class="focus-index">03</span>
        <div>
          <h3>Practical AI systems</h3>
          <p>My long-term goal is to turn research ideas into systems that can be deployed, maintained, and used in realistic environments.</p>
        </div>
      </article>
    </div>
  </section>

  <section class="home-section compact-section">
    <p class="section-kicker">Selected Projects</p>
    <h2 class="section-title">Representative work.</h2>

    <div class="highlight-list">
      <article class="highlight-item">
        <p class="paper-meta">AdaptFM Workshop · EMNLP under review</p>
        <h3>Hybrid Linear Attention Done Right</h3>
        <p>Hybrid sparse/linear attention for MiniCPM-SALA, focused on efficient long-context inference.</p>
      </article>
      <article class="highlight-item">
        <p class="paper-meta">ACL 2026 Findings</p>
        <h3>StateX</h3>
        <p>Post-training state expansion for improving recurrent model recall.</p>
      </article>
      <article class="highlight-item">
        <p class="paper-meta">EMNLP 2025</p>
        <h3>Cost-Optimal Grouped-Query Attention</h3>
        <p>Cost-aware attention design for long-context modeling under real memory and compute budgets.</p>
      </article>
      <article class="highlight-item">
        <p class="paper-meta">ACL 2024</p>
        <h3>∞Bench</h3>
        <p>Evaluation beyond 100K tokens to measure whether long-context models genuinely work.</p>
      </article>
    </div>

    <p class="section-link-row">
      <a class="text-link" href="/publications/">See full publication list</a>
    </p>
  </section>
</main>
