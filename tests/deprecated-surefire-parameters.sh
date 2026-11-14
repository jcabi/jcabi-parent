#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (c) 2012-2026 Yegor Bugayenko
# SPDX-License-Identifier: MIT

set -euo pipefail

pom=$(mvn --batch-mode --quiet help:effective-pom -Doutput=/dev/stdout)
for name in parallelTestsTimeoutInSeconds parallelTestsTimeoutForcedInSeconds perCoreThreadCount; do
  if grep -q "<${name}>" <<<"${pom}"; then
    echo "The pom must not configure ${name}, since surefire and failsafe 3.6.0 deprecated it" >&2
    exit 1
  fi
done
