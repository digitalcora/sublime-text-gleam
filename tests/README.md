# Syntax Tests

This directory contains [syntax test files][1], adapted from the code in the
[Gleam language tour][2].

[1]: https://www.sublimetext.com/docs/syntax.html#testing
[2]: https://tour.gleam.run/

When a test file is open in Sublime Text and the Gleam package is installed,
the **Build With: Syntax Tests** command becomes available and runs the tests
in the file. The **Tools > Build** menu item (<kbd>Ctrl</kbd>+<kbd>B</kbd> by
default) is a shortcut for this.

This directory is also a Gleam project, to enable checking that the test files
are actually valid code. The `bad` directory contains code that intentionally
produces compiler errors; since it's outside the `src` directory, the compiler
will not complain about it.
