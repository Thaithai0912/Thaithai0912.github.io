---
layout: home
title: "Publications"
permalink: /publications/
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
      <p class="eyebrow">Publications</p>
      <h1 class="page-title">Research across long-context modeling, efficient architectures, data, and evaluation.</h1>
      <p class="page-intro">
        My work appears at ACL, EMNLP, COLM, and related workshops. I publish
        primarily as <strong>Zhen Leng Thai</strong>; my Chinese name is
        <strong>Zhenning Dai</strong> / 戴振宁.
      </p>
      <div class="hero-links">
        <a href="https://scholar.google.com/citations?user=9uaxvAkAAAAJ&amp;hl=en">Google Scholar</a>
        <a href="/cv/">CV</a>
      </div>
    </div>
  </header>
</div>

<main class="home-main">
  <section class="home-section compact-section">
    <p class="section-kicker">Selected Work</p>
    <h2 class="section-title">Concise notes on what each project is about and why it matters.</h2>

    <div class="publication-list">
      <article class="publication-item">
        <div class="publication-year">2026</div>
        <div class="publication-body">
          <h3>Hybrid Linear Attention Done Right</h3>
          <p class="paper-meta">AdaptFM Workshop · EMNLP under review</p>
          <p class="paper-authors">Yingfa Chen, <strong>Zhen Leng Thai*</strong>, Zihan Zhou, Zhu Zhang, Xingyu Shen, Shuo Wang, Chaojun Xiao, Xu Han, Zhiyuan Liu</p>
          <p>This work studies how to make hybrid attention practical for extremely long contexts. I worked on the MiniCPM-SALA direction, combining sparse and linear mechanisms to improve long-context efficiency while preserving useful model behavior.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2026</div>
        <div class="publication-body">
          <h3>Between a Rock and a Hard Place: The Tension Between Ethical Reasoning and Safety Alignment in LLMs</h3>
          <p class="paper-meta">ACL 2026</p>
          <p class="paper-authors">Shei Pern Chua, <strong>Zhen Leng Thai</strong>, Kai Jun Teh, Xiao Li, Qibing Ren, Xiaolin Hu</p>
          <p>This work examines a difficult question in AI safety: models may appear aligned in simple settings but struggle when ethical reasoning becomes complex. It matters because safer AI systems need to handle nuance, not only refuse obvious harms.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2026</div>
        <div class="publication-body">
          <h3>StateX: Enhancing RNN Recall via Post-training State Expansion</h3>
          <p class="paper-meta">ACL 2026 Findings</p>
          <p class="paper-authors">Xingyu Shen, Yingfa Chen, <strong>Zhen Leng Thai</strong>, Xu Han, Zhiyuan Liu, Maosong Sun</p>
          <p>StateX improves recurrent model recall by expanding state capacity after training. The project connects to my broader interest in memory-efficient long-context modeling beyond standard attention.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2025</div>
        <div class="publication-body">
          <h3>Cost-Optimal Grouped-Query Attention for Long-Context Modeling</h3>
          <p class="paper-meta">EMNLP 2025</p>
          <p class="paper-authors">Yingfa Chen, Yutong Wu, Chenyang Song, <strong>Zhen Leng Thai</strong>, Xingyu Shen, Xu Han, Zhiyuan Liu, Maosong Sun</p>
          <p>This work studies how grouped-query attention can be configured for long-context models under real memory and compute budgets. It matters because architecture choices should be not only accurate, but cost-aware and deployable.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2024</div>
        <div class="publication-body">
          <h3>DecorateLM: Data Engineering Through Corpus Rating, Tagging, and Editing with Language Models</h3>
          <p class="paper-meta">EMNLP 2024</p>
          <p class="paper-authors">Ranchi Zhao, <strong>Zhen Leng Thai*</strong>, Yifan Zhang, Shengding Hu, Yunqi Ba, Jie Zhou, Jie Cai, Zhiyuan Liu, Maosong Sun</p>
          <p>DecorateLM uses language models to rate, tag, and edit corpora for pretraining. The work reflects my belief that better models often begin with better data, not only bigger architectures.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2024</div>
        <div class="publication-body">
          <h3>∞Bench: Extending Long Context Evaluation Beyond 100K Tokens</h3>
          <p class="paper-meta">ACL 2024</p>
          <p class="paper-authors">Xinrong Zhang, Yingfa Chen, Shengding Hu, Zihang Xu, Junhao Chen, Moo Khai Hao, Xu Han, <strong>Zhen Leng Thai</strong>, Shuo Wang, Zhiyuan Liu, Maosong Sun</p>
          <p>∞Bench evaluates language models on contexts beyond 100K tokens. It helps the community see where long-context models genuinely work, where they fail, and what capabilities are still missing.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2024</div>
        <div class="publication-body">
          <h3>OlympiadBench: A Challenging Benchmark for Promoting AGI with Olympiad-Level Bilingual Multimodal Scientific Problems</h3>
          <p class="paper-meta">ACL 2024</p>
          <p class="paper-authors">Chaoqun He, Renjie Luo, Yuzhuo Bai, Shengding Hu, <strong>Zhen Leng Thai</strong>, Junhao Shen, Jinyi Hu, Xu Han, Yujie Huang, Yuxiang Zhang, Jie Liu, Lei Qi, Zhiyuan Liu, Maosong Sun</p>
          <p>OlympiadBench tests models on difficult bilingual, multimodal scientific problems. I value this line of work because challenging evaluation reveals whether AI systems can support deeper reasoning rather than surface-level pattern matching.</p>
        </div>
      </article>

      <article class="publication-item">
        <div class="publication-year">2024</div>
        <div class="publication-body">
          <h3>MiniCPM: Unveiling the Potential of Small Language Models with Scalable Training Strategies</h3>
          <p class="paper-meta">COLM 2024</p>
          <p class="paper-authors">Shengding Hu, Yuge Tu, Xu Han, Chaoqun He, Ganqu Cui, Xiang Long, Zhi Zheng, Yewei Fang, Yuxiang Huang, Weilin Zhao, Xinrong Zhang, <strong>Zhen Leng Thai</strong>, Kaihuo Zhang, Chongyi Wang, Yuan Yao, Chenyang Zhao, Jie Zhou, Jie Cai, Zhongwu Zhai, Ning Ding, Chao Jia, Guoyang Zeng, Dahai Li, Zhiyuan Liu, Maosong Sun</p>
          <p>MiniCPM explores scalable strategies for training capable small language models. I contributed to the broader MiniCPM effort, which is important because practical AI often depends on models that are efficient enough to deploy widely.</p>
        </div>
      </article>
    </div>

    <p class="author-note">* denotes co-first author.</p>
  </section>
</main>
