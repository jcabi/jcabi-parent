#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (c) 2012-2026 Yegor Bugayenko
# SPDX-License-Identifier: MIT

set -euo pipefail

pom=$(mvn --batch-mode --quiet -Pjcabi-slf4j help:effective-pom -Doutput=/dev/stdout)
if grep -q '<groupId>log4j</groupId>' <<<"${pom}"; then
  echo 'The jcabi-slf4j profile must not bring log4j:log4j next to reload4j' >&2
  exit 1
fi
