#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (c) 2012-2026 Yegor Bugayenko
# SPDX-License-Identifier: MIT

set -euo pipefail

pom=$(mvn --batch-mode --quiet help:effective-pom -Doutput=/dev/stdout)
if grep -Eq '<(parallelTestsTimeoutForcedInSeconds|parallelTestsTimeoutInSeconds|perCoreThreadCount)>' <<<"${pom}"; then
  echo 'Surefire and Failsafe must not configure ignored deprecated parameters' >&2
  exit 1
fi
