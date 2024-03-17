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

Two notes about local testing:

* The project root in Sublime should be the `Gleam` directory within Sublime's
  ["Packages" directory](../CONTRIBUTING.md), even if this is a symlink to your
  copy of the repo elsewhere (Sublime will handle the symlink transparently).
  If not, trying to run syntax tests will give the error _"The current file can
  not be used for testing since it is not loaded by Sublime Text."_

* Due to a [known issue](https://github.com/sublimehq/sublime_text/issues/6274)
  with Sublime, trying to run syntax tests when there is Gleam build output in
  `build/` may fail silently and print a `UnicodeDecodeError` to the console.
  If so, use `gleam clean` to remove this directory.
