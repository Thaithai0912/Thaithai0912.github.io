# Personal Website Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the inherited Academic Pages homepage with a professional, concise, dark-mode personal website for Thai Zhen Leng / 戴振宁.

**Architecture:** Keep the site as a GitHub Pages-compatible Jekyll project. Add a custom homepage layout and stylesheet so the landing page bypasses the old sidebar/template feel while preserving existing static hosting behavior.

**Tech Stack:** Jekyll, Liquid, SCSS/CSS, static HTML, shell-based build verification.

---

## File Structure

- Create `_layouts/home.html`: standalone homepage layout that includes the shared head/scripts but not the old masthead/sidebar/footer chrome.
- Create `assets/css/personal-home.scss`: dedicated homepage styles, compiled by Jekyll into `/assets/css/personal-home.css`.
- Modify `_pages/about.md`: replace template homepage content with structured homepage sections and use `layout: home`.
- Modify `_data/navigation.yml`: simplify navigation to Research, Publications, CV, Contact.
- Modify `_pages/cv.md`: replace template CV content with concise real education, experience, skills, awards, and a PDF link.
- Copy `/Users/zhenlengthai/Desktop/personal/Spring Resume.pdf` to `files/zhen-leng-thai-resume.pdf`: provide a stable CV/resume download target.
- Create `scripts/verify-personal-site.sh`: build-output assertions for required homepage content and links.

## Task 1: Add Homepage Verification Script

**Files:**
- Create: `scripts/verify-personal-site.sh`

- [ ] **Step 1: Write the failing verification script**

```bash
#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INDEX_FILE="$ROOT_DIR/_site/index.html"
CV_FILE="$ROOT_DIR/_site/cv/index.html"

if [ ! -f "$INDEX_FILE" ]; then
  echo "Missing built homepage: $INDEX_FILE"
  exit 1
fi

if [ ! -f "$CV_FILE" ]; then
  echo "Missing built CV page: $CV_FILE"
  exit 1
fi

assert_contains() {
  local file="$1"
  local needle="$2"
  if ! grep -Fq "$needle" "$file"; then
    echo "Expected '$needle' in $file"
    exit 1
  fi
}

assert_not_contains() {
  local file="$1"
  local needle="$2"
  if grep -Fq "$needle" "$file"; then
    echo "Did not expect '$needle' in $file"
    exit 1
  fi
}

assert_contains "$INDEX_FILE" "Thai Zhen Leng"
assert_contains "$INDEX_FILE" "戴振宁"
assert_contains "$INDEX_FILE" "THUNLP"
assert_contains "$INDEX_FILE" "images/Image_Editor.png"
assert_contains "$INDEX_FILE" "thaizhenleng123@gmail.com"
assert_contains "$INDEX_FILE" "scholar.google.com/citations?user=9uaxvAkAAAAJ"
assert_contains "$INDEX_FILE" "LLM Architecture"
assert_contains "$INDEX_FILE" "Long Context"
assert_contains "$INDEX_FILE" "MiniCPM-SALA"
assert_contains "$INDEX_FILE" "Chinese Government Scholarship"
assert_contains "$INDEX_FILE" "Music"
assert_not_contains "$INDEX_FILE" "academicpages is a ready-to-fork"
assert_not_contains "$INDEX_FILE" "Paper Title Number"

assert_contains "$CV_FILE" "M.S. in Computer Science and Technology"
assert_contains "$CV_FILE" "zhen-leng-thai-resume.pdf"

echo "Personal site verification passed"
```

- [ ] **Step 2: Run the verification to confirm it fails before implementation**

Run:

```bash
chmod +x scripts/verify-personal-site.sh
scripts/verify-personal-site.sh
```

Expected: FAIL because `_site/index.html` is missing before a build, or because the current template homepage lacks the required personal content.

## Task 2: Add Custom Homepage Layout And Styles

**Files:**
- Create: `_layouts/home.html`
- Create: `assets/css/personal-home.scss`

- [ ] **Step 1: Add `_layouts/home.html`**

```liquid
---
layout: compress
---

{% include base_path %}

<!doctype html>
<html lang="{{ site.locale | slice: 0,2 }}" class="no-js">
  <head>
    {% include head.html %}
    <link rel="stylesheet" href="{{ base_path }}/assets/css/personal-home.css">
    {% include head/custom.html %}
  </head>
  <body class="personal-home">
    {% include browser-upgrade.html %}
    {{ content }}
    {% include scripts.html %}
  </body>
</html>
```

- [ ] **Step 2: Add `assets/css/personal-home.scss`**

The stylesheet defines:

- Charcoal/slate dark background with subtle navy undertone.
- Centered spacious hero.
- Square framed grayscale portrait.
- One-line desktop name with Chinese name below.
- Responsive single-column mobile layout.
- Below-fold sections for research, selected work, awards, interests, and contact.

- [ ] **Step 3: Run Jekyll build**

Run:

```bash
bundle exec jekyll build
```

Expected: Build succeeds and creates `_site/assets/css/personal-home.css`.

## Task 3: Replace Homepage Content

**Files:**
- Modify: `_pages/about.md`

- [ ] **Step 1: Replace `_pages/about.md` front matter**

```yaml
---
layout: home
permalink: /
title: "Thai Zhen Leng 戴振宁"
excerpt: "Master's student at THUNLP, Tsinghua University, researching efficient LLM architectures for long-context language modeling."
author_profile: false
redirect_from:
  - /about/
  - /about.html
---
```

- [ ] **Step 2: Add homepage sections**

The content includes:

- Hero navigation anchors: Research, Publications, CV, Contact.
- Portrait: `/images/Image_Editor.png`.
- Affiliation: THUNLP · Tsinghua University.
- Bio paragraph from the design spec.
- Links to email, Google Scholar, and `/cv/`.
- Research section.
- Selected work section.
- Awards section.
- Interests section.
- Contact section.

- [ ] **Step 3: Build and run verification**

Run:

```bash
bundle exec jekyll build
scripts/verify-personal-site.sh
```

Expected: Build succeeds and verification passes for homepage-specific checks except CV PDF checks if the PDF has not yet been copied.

## Task 4: Simplify Navigation And CV Page

**Files:**
- Modify: `_data/navigation.yml`
- Modify: `_pages/cv.md`
- Create: `files/zhen-leng-thai-resume.pdf`

- [ ] **Step 1: Simplify `_data/navigation.yml`**

```yaml
main:
  - title: "Research"
    url: /#research

  - title: "Publications"
    url: /#publications

  - title: "CV"
    url: /cv/

  - title: "Contact"
    url: /#contact
```

- [ ] **Step 2: Copy the resume PDF**

Run:

```bash
cp "/Users/zhenlengthai/Desktop/personal/Spring Resume.pdf" files/zhen-leng-thai-resume.pdf
```

- [ ] **Step 3: Replace `_pages/cv.md` with real concise CV content**

Use `layout: single`, `title: "CV"`, `permalink: /cv/`, `author_profile: false`, and sections for education, research and work experience, selected publications/projects, awards, skills, languages, and interests.

- [ ] **Step 4: Build and run verification**

Run:

```bash
bundle exec jekyll build
scripts/verify-personal-site.sh
```

Expected: Build succeeds and verification prints `Personal site verification passed`.

## Task 5: Browser QA And Polish

**Files:**
- Modify as needed: `_pages/about.md`, `assets/css/personal-home.scss`, `_pages/cv.md`

- [ ] **Step 1: Start the local site**

Run:

```bash
bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Expected: The site serves at `http://127.0.0.1:4000/`.

- [ ] **Step 2: Inspect desktop and mobile**

Use the in-app browser to verify:

- Desktop first screen is centered, spacious, and not overcrowded.
- Photo renders.
- Name does not split awkwardly on desktop.
- Mobile layout stacks cleanly without text overlap.
- Navigation anchors work.

- [ ] **Step 3: Final verification**

Run:

```bash
bundle exec jekyll build
scripts/verify-personal-site.sh
```

Expected: Build succeeds and verification prints `Personal site verification passed`.
