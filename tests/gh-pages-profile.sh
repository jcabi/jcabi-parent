#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (c) 2012-2026 Yegor Bugayenko
# SPDX-License-Identifier: MIT

set -euo pipefail

pom=$(mvn --batch-mode --quiet -Pgh-pages help:effective-pom -Doutput=/dev/stdout)
if grep -Fq "<path>\${site.path}</path>" <<<"${pom}"; then
  echo 'GitHub Pages must not contain an unresolved site.path' >&2
  exit 1
fi
version=$(sed -n 's/^  <version>\(.*\)<\/version>$/\1/p' <<<"${pom}")
if ! grep -Fq "<path>${version}</path>" <<<"${pom}"; then
  echo 'GitHub Pages must default to the project version' >&2
  exit 1
fi
pom=$(mvn --batch-mode --quiet -Pgh-pages help:effective-pom \
  -Dsite.path=custom/path -Doutput=/dev/stdout)
if ! grep -q '<path>custom/path</path>' <<<"${pom}"; then
  echo 'GitHub Pages must respect an explicit site.path' >&2
  exit 1
fi
