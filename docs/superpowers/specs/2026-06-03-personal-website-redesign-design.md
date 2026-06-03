# Personal Website Redesign Design

## Goal

Build a professional, beautiful, concise personal website for Thai Zhen Leng / 戴振宁. The site should not feel like the current Academic Pages template. It should present a polished dark-mode identity page for a Tsinghua THUNLP Master's student working on LLM architecture and long-context modeling.

## Audience

The site should work for:

- Academic visitors looking for research focus, advisor, publications, and Google Scholar.
- Research/engineering visitors looking for LLM architecture, long-context modeling, and selected project impact.
- Recruiters or collaborators who need a fast read and a clear way to contact Zhen Leng.

## Visual Direction

Use a refined dark theme inspired by editor-style charcoal/slate backgrounds rather than pure black. The palette should feel quiet and premium:

- Background: deep graphite/slate with subtle navy undertones.
- Text: soft white and muted blue-gray.
- Lines: thin, pale, low-opacity dividers.
- Decoration: minimal; polish should come from spacing, alignment, typography, and the portrait.

The homepage first screen is spacious, centered, and calm. It does not display dense CV blocks above the fold.

## First Screen

The first viewport should include only:

- Centered top navigation: Research, Publications, CV, Contact.
- Portrait using `images/Image_Editor.png`.
- Affiliation label: THUNLP · Tsinghua University.
- Name: `Thai Zhen Leng` on one line on desktop, with `戴振宁` beneath it.
- One concise bio paragraph.
- Essential links: Email, Google Scholar, CV.
- A small research keyword row near the bottom: LLM Architecture, Long Context, Pretraining, Data Engineering.

The portrait is required. It is displayed as a square image in a thin, subtle frame. It uses grayscale treatment to fit the dark monochrome theme.

## Content Structure

Use a concise one-page homepage with sections below the first screen. If details become too dense, deeper pages can remain available through navigation.

Sections:

1. Research
   - Efficient model architecture design for long-context language modeling.
   - Mention experience across LLM pretraining, scaling, data engineering, benchmark evaluation, and architecture design.

2. Selected Work
   - MiniCPM-SALA / hybrid attention / long-context architecture.
   - DecorateLM and pretraining data engineering.
   - Cost-optimal grouped-query attention for long-context modeling.
   - MiniCPM small language model work.
   - Safety alignment work as a secondary selected research item.

3. Awards
   - Chinese Government Scholarship (2024-2026).
   - Outstanding Graduate of Department of Computer Science and Technology, Tsinghua University.
   - Beijing Government Scholarship (2020-2024).
   - Tsinghua University Academic Excellence Award (2021).
   - UTAR mathematics competition 2021 individual and group champion.
   - Champion of ACKUM Science and Maths Competition.
   - Second Runner Up of Xiamen University Malaysia Mathematics Competition.

4. Interests
   - Music, movies, sports.
   - Keep this section warm but short.

5. Contact
   - Email: `thaizhenleng123@gmail.com`.
   - Google Scholar: `https://scholar.google.com/citations?user=9uaxvAkAAAAJ&hl=en`.

## Copy Direction

The first-screen bio is simple and memorable:

> I am a Master's student in Computer Science at Tsinghua University, advised by Prof. Zhiyuan Liu at THUNLP. My research focuses on efficient architectures for long-context language modeling.

The longer bio can appear below:

> I completed my undergraduate studies in Computer Science at Tsinghua University and now work on large language models at THUNLP. My research spans pretraining, scaling, data engineering, benchmark evaluation, and model architecture design, with a focus on making long-context language models more efficient and capable.

## Architecture

Keep the implementation simple and static. This repository is an Academic Pages / Jekyll site, but the homepage should use a custom layout and custom stylesheet so it no longer feels like the inherited template.

Implementation approach:

- Add a custom `home` layout for the redesigned landing page.
- Add a dedicated stylesheet for the personal homepage.
- Replace the current template homepage copy in `_pages/about.md`.
- Simplify navigation to the pages that matter.
- Keep existing Jekyll/GitHub Pages compatibility.

## Testing And Verification

Verification should include:

- Build the Jekyll site.
- Inspect the generated homepage for required text and links.
- View the site in the browser at desktop and mobile widths.
- Confirm the portrait renders.
- Confirm the first screen is not visually overcrowded.

## Decisions

- Default theme: refined dark charcoal/slate, not flat black.
- Hero composition: centered and spacious.
- Name treatment: English name on one line on desktop, Chinese name below.
- Portrait: required in the first screen.
- Content density: research, selected work, awards, interests, and contact below the first viewport.
