<img alt="logo" src="https://www.jcabi.com/logo-square.svg" width="64px" height="64px" />

[![EO principles respected here](https://www.elegantobjects.org/badge.svg)](https://www.elegantobjects.org)
[![DevOps By Rultor.com](http://www.rultor.com/b/jcabi/jcabi-parent)](http://www.rultor.com/p/jcabi/jcabi-parent)
[![We recommend IntelliJ IDEA](https://www.elegantobjects.org/intellij-idea.svg)](https://www.jetbrains.com/idea/)

[![mvn](https://github.com/jcabi/jcabi-parent/actions/workflows/mvn.yml/badge.svg)](https://github.com/jcabi/jcabi-parent/actions/workflows/mvn.yml)
[![PDD status](http://www.0pdd.com/svg?name=jcabi/jcabi-parent)](http://www.0pdd.com/p?name=jcabi/jcabi-parent)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/com.jcabi/parent/badge.svg)](https://maven-badges.herokuapp.com/maven-central/com.jcabi/parent)
[![Hits-of-Code](https://hitsofcode.com/github/jcabi/jcabi-parent)](https://hitsofcode.com/view/github/jcabi/jcabi-parent)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/jcabi/jcabi-parent/blob/master/LICENSE.txt)

More details are here: [parent.jcabi.com](https://parent.jcabi.com/index.html)

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
    <version>0.0.0</version>
  </parent>
  <groupId>your-group-id</groupId>
  <artifactId>your-artifact-id</artifactId>
  <version>1.2.3-SNAPSHOT</version>
  [...]
</project>
```

## How to contribute?

Fork the repository, make changes, submit a pull request.
We promise to review your changes same day and apply to
the `master` branch, if they look correct.

Please run Maven build before submitting a pull request:

```
$ mvn clean install -Pqulice
```

That's it.
