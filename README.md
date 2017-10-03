<img src="http://img.jcabi.com/logo-square.png" width="64px" height="64px" />

[![Managed by Zerocracy](http://www.0crat.com/badge/C3RUBL5H9.svg)](http://www.0crat.com/p/C3RUBL5H9)
[![DevOps By Rultor.com](http://www.rultor.com/b/jcabi/jcabi-parent)](http://www.rultor.com/p/jcabi/jcabi-parent)

[![Build Status](https://travis-ci.org/jcabi/jcabi-parent.svg?branch=master)](https://travis-ci.org/jcabi/jcabi-parent)
[![PDD status](http://www.0pdd.com/svg?name=jcabi/jcabi-parent)](http://www.0pdd.com/p?name=jcabi/jcabi-parent)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/com.jcabi/parent/badge.svg)](https://maven-badges.herokuapp.com/maven-central/com.jcabi/parent)
[![Dependencies](https://www.versioneye.com/user/projects/561a9feca193340f32000ee6/badge.svg?style=flat)](https://www.versioneye.com/user/projects/561a9feca193340f32000ee6)

More details are here: [parent.jcabi.com](http://parent.jcabi.com/index.html)

Base your Maven projects on this artifact and you will get
many pre-configuration benefits, including up-to-date
`dependencies`, `plugins`, build `extensions`,
`repositories`, and more. All that you need to do is to
define our artifact as a parent of your project:

```xml
<project>
  <modelVersion>4.0.0</modelVersion>
  <parent>
    <groupId>com.jcabi</groupId>
    <artifactId>parent</artifactId>
  </parent>
  <groupId>your-group-id</groupId>
  <artifactId>your-artifact-id</artifactId>
  <version>1.2.3-SNAPSHOT</version>
  [...]
</project>
```

## Questions?

If you have any questions about the framework, or something doesn't work as expected,
please [submit an issue here](https://github.com/jcabi/jcabi-parent/issues/new).

## How to contribute?

Fork the repository, make changes, submit a pull request.
We promise to review your changes same day and apply to
the `master` branch, if they look correct.

Please run Maven build before submitting a pull request:

```
$ mvn clean install -Pqulice
```
