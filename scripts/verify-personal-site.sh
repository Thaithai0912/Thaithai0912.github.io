#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INDEX_FILE="$ROOT_DIR/_site/index.html"
CV_FILE="$ROOT_DIR/_site/cv/index.html"
PUBLICATIONS_FILE="$ROOT_DIR/_site/publications/index.html"
RESEARCH_FILE="$ROOT_DIR/_site/research/index.html"
PERSONAL_FILE="$ROOT_DIR/_site/personal/index.html"

if [ ! -f "$INDEX_FILE" ]; then
  echo "Missing built homepage: $INDEX_FILE"
  exit 1
fi

if [ ! -f "$CV_FILE" ]; then
  echo "Missing built CV page: $CV_FILE"
  exit 1
fi

if [ ! -f "$PUBLICATIONS_FILE" ]; then
  echo "Missing built publications page: $PUBLICATIONS_FILE"
  exit 1
fi

if [ ! -f "$RESEARCH_FILE" ]; then
  echo "Missing built research page: $RESEARCH_FILE"
  exit 1
fi

if [ ! -f "$PERSONAL_FILE" ]; then
  echo "Missing built personal page: $PERSONAL_FILE"
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
assert_contains "$INDEX_FILE" "images/zhen-leng-graduation.png"
assert_contains "$INDEX_FILE" "thaizhenleng123@gmail.com"
assert_contains "$INDEX_FILE" "scholar.google.com/citations?user=9uaxvAkAAAAJ"
assert_contains "$INDEX_FILE" "LLM Architecture"
assert_contains "$INDEX_FILE" "Long Context"
assert_contains "$INDEX_FILE" "meaningful impact"
assert_contains "$INDEX_FILE" "Malaysian Chinese"
assert_contains "$INDEX_FILE" "Cheras, Kuala Lumpur"
assert_contains "$INDEX_FILE" "MiniCPM-SALA"
assert_contains "$INDEX_FILE" "Hybrid Linear Attention Done Right"
assert_contains "$INDEX_FILE" "∞Bench"
assert_contains "$INDEX_FILE" "ACL 2024"
assert_contains "$INDEX_FILE" "COLM 2024"
assert_contains "$INDEX_FILE" "/publications/"
assert_contains "$INDEX_FILE" "/research/"
assert_contains "$INDEX_FILE" "/personal/"
assert_not_contains "$INDEX_FILE" "academicpages is a ready-to-fork"
assert_not_contains "$INDEX_FILE" "Paper Title Number"

assert_contains "$CV_FILE" "M.S. in Computer Science and Technology"
assert_contains "$CV_FILE" "zhen-leng-thai-resume.pdf"
assert_contains "$CV_FILE" "stat-card"
assert_contains "$CV_FILE" "Chinese Government Scholarship"
assert_contains "$CV_FILE" "<strong>Zhen Leng Thai*</strong>"

assert_contains "$PUBLICATIONS_FILE" "<strong>Zhen Leng Thai*</strong>"
assert_contains "$PUBLICATIONS_FILE" "<strong>Zhen Leng Thai</strong>"
assert_contains "$PUBLICATIONS_FILE" "<strong>Zhenning Dai</strong>"
assert_contains "$PUBLICATIONS_FILE" "Between a Rock and a Hard Place"
assert_contains "$PUBLICATIONS_FILE" "StateX"
assert_contains "$PUBLICATIONS_FILE" "Cost-Optimal Grouped-Query Attention"
assert_contains "$PUBLICATIONS_FILE" "DecorateLM"
assert_contains "$PUBLICATIONS_FILE" "OlympiadBench"
assert_contains "$PUBLICATIONS_FILE" "ACL 2026"
assert_contains "$PUBLICATIONS_FILE" "EMNLP 2025"
assert_contains "$PUBLICATIONS_FILE" "EMNLP 2024"
assert_contains "$PUBLICATIONS_FILE" "* denotes co-first author"

assert_contains "$RESEARCH_FILE" "Long-context systems need both better memory and better engineering"
assert_contains "$RESEARCH_FILE" "Hybrid attention for long context"
assert_contains "$RESEARCH_FILE" "Practical AI systems"

assert_contains "$PERSONAL_FILE" "Cheras, Kuala Lumpur"
assert_contains "$PERSONAL_FILE" "Malaysian Chinese"
assert_contains "$PERSONAL_FILE" "LLM algorithm engineer"
assert_contains "$PERSONAL_FILE" "Music"
assert_contains "$PERSONAL_FILE" "Movies"
assert_contains "$PERSONAL_FILE" "Sports"

echo "Personal site verification passed"
