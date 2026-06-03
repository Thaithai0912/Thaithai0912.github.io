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
