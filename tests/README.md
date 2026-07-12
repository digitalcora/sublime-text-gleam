# Syntax Tests

This directory contains [syntax test files][1], adapted from the code in the
[Gleam language tour][2].

[1]: https://www.sublimetext.com/docs/syntax.html#testing
[2]: https://tour.gleam.run/

When a test file is open in Sublime Text and the Gleam package is installed,
the **Build With: Syntax Tests** command becomes available and runs the tests
in the file.

This directory is also a Gleam project, to enable checking that the test files
are actually valid code. The `bad` directory contains code that intentionally
produces compiler errors; since it's outside the `src` directory, the compiler
will not complain about it.

Some notes on local testing:

* The project root in Sublime must be the `Gleam` directory within Sublime's
  ["Packages" directory](../CONTRIBUTING.md), even if this is a symlink to your
  copy of the repo elsewhere (Sublime will handle the symlink transparently).
  If not, trying to run syntax tests will give the error _"The current file can
  not be used for testing since it is not loaded by Sublime Text."_

* The **LSP** package intentionally [ignores syntax test files][3].

[3]: https://github.com/sublimelsp/LSP/pull/2531
