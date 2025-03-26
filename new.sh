#!/bin/bash
title="$*"
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g' | sed -E 's/^-+|-+$//g')
filename="_posts/$(date +%F)-$slug.md"

cat << EOF > "$filename"
---
layout: post
title: "$title"
date: $(date '+%Y-%m-%d %H:%M:%S %z')
categories: []
tags: []
---

## $title

EOF

code "$filename"