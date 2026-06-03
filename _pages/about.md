---
layout: home
permalink: /
title: "Thai Zhen Leng 戴振宁"
excerpt: "Final-year Master's student at THUNLP, Tsinghua University, working on long-context modeling, efficient LLM architectures, and AI systems with real-world impact."
author_profile: false
redirect_from:
  - /about/
  - /about.html
---

<div class="home-shell">
  <header class="home-hero">
    <nav class="home-nav" aria-label="Primary navigation">
      <a href="#research">Research</a>
      <a href="#publications">Publications</a>
      <a href="/cv/">CV</a>
      <a href="#contact">Contact</a>
    </nav>

    <div class="hero-center">
      <div class="hero-portrait-frame">
        <img src="/images/zhen-leng-graduation.png" alt="Thai Zhen Leng in graduation robes">
      </div>

      <p class="eyebrow">THUNLP · Tsinghua University</p>
      <h1 class="hero-name">Thai Zhen Leng</h1>
      <div class="hero-name-local">戴振宁</div>

      <p class="hero-intro">
        I am a final-year Master's student in Computer Science at Tsinghua University,
        advised by Prof. Zhiyuan Liu at THUNLP. I work on long-context language
        models and efficient AI architectures, with a long-term goal of turning
        strong research ideas into practical systems that create meaningful impact.
      </p>
      <div class="hero-links" aria-label="Key links">
        <a href="mailto:thaizhenleng123@gmail.com">Email</a>
        <a href="https://scholar.google.com/citations?user=9uaxvAkAAAAJ&amp;hl=en">Google Scholar</a>
        <a href="/cv/">CV</a>
      </div>
    </div>

    <div class="hero-keywords" aria-label="Research keywords">
      <span>LLM Architecture</span>
      <span>Long Context</span>
      <span>AI Evaluation</span>
      <span>Practical AI</span>
    </div>
  </header>
</div>

<main class="home-main">
  <section class="home-section" id="research">
    <p class="section-kicker">Research</p>
    <h2 class="section-title">I want to build AI systems that are capable, efficient, and useful in the real world.</h2>
    <p class="section-lede">
      I am fascinated by large language models not only as research objects, but as
      tools that can help people reason, learn, create, and solve practical problems.
      My work spans long-context modeling, efficient architectures, pretraining, data
      engineering, and AI evaluation. Across these directions, I care about one core
      question: how can we make AI systems more capable while keeping them practical
      enough to benefit people and society?
    </p>

    <div class="research-grid">
      <article class="info-block">
        <h3>Long-context modeling</h3>
        <p>I study how language models can remember, retrieve, and reason over very long inputs, so they can support more realistic tasks than short-context benchmarks allow.</p>
      </article>
      <article class="info-block">
        <h3>Efficient LLM architecture</h3>
        <p>I explore sparse, linear, hybrid, and recurrent-style architectures that make strong models faster and more scalable without losing core capabilities.</p>
      </article>
      <article class="info-block">
        <h3>Data and evaluation</h3>
        <p>I work on data engineering and benchmarks because better AI depends on better training signals and clearer ways to measure what models can actually do.</p>
      </article>
    </div>
  </section>

  <section class="home-section" id="publications">
    <p class="section-kicker">Selected work</p>
    <h2 class="section-title">Selected research on long-context models, efficient architectures, and trustworthy evaluation.</h2>

    <div class="work-list">
      <article class="info-block">
        <h3>Hybrid Linear Attention Done Right</h3>
        <p class="paper-meta">AdaptFM Workshop · EMNLP under review</p>
        <p class="paper-authors">Yingfa Chen, <strong>Zhen Leng Thai*</strong>, Zihan Zhou, Zhu Zhang, Xingyu Shen, Shuo Wang, Chaojun Xiao, Xu Han, Zhiyuan Liu</p>
        <p>This work studies how to make hybrid attention practical for extremely long contexts. I worked on the MiniCPM-SALA direction, which combines sparse and linear mechanisms to improve long-context efficiency while preserving useful model behavior.</p>
      </article>
      <article class="info-block">
        <h3>Between a Rock and a Hard Place: The Tension Between Ethical Reasoning and Safety Alignment in LLMs</h3>
        <p class="paper-meta">ACL 2026</p>
        <p class="paper-authors">Shei Pern Chua, <strong>Zhen Leng Thai</strong>, Kai Jun Teh, Xiao Li, Qibing Ren, Xiaolin Hu</p>
        <p>This work examines a difficult question in AI safety: models may appear aligned in simple settings but struggle when ethical reasoning becomes complex. It matters because safer AI systems need to handle nuance, not only refuse obvious harms.</p>
      </article>
      <article class="info-block">
        <h3>StateX: Enhancing RNN Recall via Post-training State Expansion</h3>
        <p class="paper-meta">ACL 2026 Findings</p>
        <p class="paper-authors">Xingyu Shen, Yingfa Chen, <strong>Zhen Leng Thai</strong>, Xu Han, Zhiyuan Liu, Maosong Sun</p>
        <p>StateX improves recurrent model recall by expanding state capacity after training. The project connects to my broader interest in memory-efficient long-context modeling beyond standard attention.</p>
      </article>
      <article class="info-block">
        <h3>Cost-Optimal Grouped-Query Attention for Long-Context Modeling</h3>
        <p class="paper-meta">EMNLP 2025</p>
        <p class="paper-authors">Yingfa Chen, Yutong Wu, Chenyang Song, <strong>Zhen Leng Thai</strong>, Xingyu Shen, Xu Han, Zhiyuan Liu, Maosong Sun</p>
        <p>This work studies how grouped-query attention can be configured for long-context models under real memory and compute budgets. It matters because architecture choices should be not only accurate, but cost-aware and deployable.</p>
      </article>
      <article class="info-block">
        <h3>DecorateLM: Data Engineering Through Corpus Rating, Tagging, and Editing with Language Models</h3>
        <p class="paper-meta">EMNLP 2024</p>
        <p class="paper-authors">Ranchi Zhao, <strong>Zhen Leng Thai*</strong>, Yifan Zhang, Shengding Hu, Yunqi Ba, Jie Zhou, Jie Cai, Zhiyuan Liu, Maosong Sun</p>
        <p>DecorateLM uses language models to rate, tag, and edit corpora for pretraining. The work reflects my belief that better models often begin with better data, not only bigger architectures.</p>
      </article>
      <article class="info-block">
        <h3>∞Bench: Extending Long Context Evaluation Beyond 100K Tokens</h3>
        <p class="paper-meta">ACL 2024</p>
        <p class="paper-authors">Xinrong Zhang, Yingfa Chen, Shengding Hu, Zihang Xu, Junhao Chen, Moo Khai Hao, Xu Han, <strong>Zhen Leng Thai</strong>, Shuo Wang, Zhiyuan Liu, Maosong Sun</p>
        <p>∞Bench evaluates language models on contexts beyond 100K tokens. It helps the community see where long-context models genuinely work, where they fail, and what capabilities are still missing.</p>
      </article>
      <article class="info-block">
        <h3>OlympiadBench: A Challenging Benchmark for Promoting AGI with Olympiad-Level Bilingual Multimodal Scientific Problems</h3>
        <p class="paper-meta">ACL 2024</p>
        <p class="paper-authors">Chaoqun He, Renjie Luo, Yuzhuo Bai, Shengding Hu, <strong>Zhen Leng Thai</strong>, Junhao Shen, Jinyi Hu, Xu Han, Yujie Huang, Yuxiang Zhang, Jie Liu, Lei Qi, Zhiyuan Liu, Maosong Sun</p>
        <p>OlympiadBench tests models on difficult bilingual, multimodal scientific problems. I value this line of work because challenging evaluation reveals whether AI systems can support deeper reasoning rather than surface-level pattern matching.</p>
      </article>
      <article class="info-block">
        <h3>MiniCPM: Unveiling the Potential of Small Language Models with Scalable Training Strategies</h3>
        <p class="paper-meta">COLM 2024</p>
        <p class="paper-authors">Shengding Hu, Yuge Tu, Xu Han, Chaoqun He, Ganqu Cui, Xiang Long, Zhi Zheng, Yewei Fang, Yuxiang Huang, Weilin Zhao, Xinrong Zhang, <strong>Zhen Leng Thai</strong>, Kaihuo Zhang, Chongyi Wang, Yuan Yao, Chenyang Zhao, Jie Zhou, Jie Cai, Zhongwu Zhai, Ning Ding, Chao Jia, Guoyang Zeng, Dahai Li, Zhiyuan Liu, Maosong Sun</p>
        <p>MiniCPM explores scalable strategies for training capable small language models. I contributed to the broader MiniCPM effort, which is important because practical AI often depends on models that are efficient enough to deploy widely.</p>
      </article>
    </div>

    <p class="author-note">* denotes co-first author. I publish primarily as <strong>Zhen Leng Thai</strong>; my Chinese name is <strong>Zhenning Dai</strong> / 戴振宁.</p>

    <p class="section-lede">
      More publications and citation details are available on
      <a class="text-link" href="https://scholar.google.com/citations?user=9uaxvAkAAAAJ&amp;hl=en">Google Scholar</a>.
    </p>
  </section>

  <section class="home-section" id="awards">
    <p class="section-kicker">Awards</p>
    <h2 class="section-title">Selected honors from Tsinghua and earlier academic competitions.</h2>

    <div class="awards-grid">
      <article class="info-block">
        <h3>University honors</h3>
        <ul>
          <li>Chinese Government Scholarship (2024-2026)</li>
          <li>Outstanding Graduate of Department of Computer Science and Technology, Tsinghua University</li>
          <li>Beijing Government Scholarship (2020-2024)</li>
          <li>Tsinghua University Academic Excellence Award (2021)</li>
        </ul>
      </article>
      <article class="info-block">
        <h3>Competitions</h3>
        <ul>
          <li>UTAR Mathematics Competition 2021, individual and group champion</li>
          <li>Champion of ACKUM Science and Maths Competition</li>
          <li>Second Runner Up of Xiamen University Malaysia Mathematics Competition</li>
        </ul>
      </article>
    </div>
  </section>

  <section class="home-section" id="interests">
    <p class="section-kicker">Outside research</p>
    <h2 class="section-title">I like work that connects technical depth with real human questions.</h2>
    <p class="interest-line">
      Music, movies, and sports keep me grounded outside the lab. They remind me
      that intelligence is not only about solving hard problems, but also about taste,
      emotion, creativity, teamwork, and lived experience. I enjoy meeting people who
      are curious about AI, long-context systems, and how research ideas become useful tools.
      I am also a Malaysian Chinese born in Cheras, Kuala Lumpur, a background that
      keeps me close to how technology travels across languages, cultures, and everyday lives.
    </p>
  </section>

  <section class="home-section" id="contact">
    <p class="section-kicker">Contact</p>
    <h2 class="section-title">Feel free to reach out about LLMs, long-context modeling, or potential collaborations.</h2>

    <div class="contact-grid">
      <article class="info-block">
        <h3>Email</h3>
        <p><a class="text-link" href="mailto:thaizhenleng123@gmail.com">thaizhenleng123@gmail.com</a></p>
      </article>
      <article class="info-block">
        <h3>Profiles</h3>
        <p>
          <a class="text-link" href="https://scholar.google.com/citations?user=9uaxvAkAAAAJ&amp;hl=en">Google Scholar</a>
          · <a class="text-link" href="/cv/">CV</a>
        </p>
      </article>
    </div>

    <p class="site-footer-note">© Thai Zhen Leng</p>
  </section>
</main>
