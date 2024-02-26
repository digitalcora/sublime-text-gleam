// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  // String literals
  io.debug("👩‍💻 こんにちは Gleam 🏳️‍🌈")
  //       ^ punctuation.definition.string.begin
  //        ^^^^^^^^^^^^^^^^^^^^ string.quoted.double
  //                            ^ punctuation.definition.string.end
  io.debug(
    "multi
    line
    string",
// <- string.quoted.double
  )

  // String concatenation
  io.debug("One " <> "Two")
  //              ^^ keyword.operator

  // Escape sequences (TODO: \f)
  io.debug("\" \\ \n \r \t")
  //        ^^ constant.character.escape
  //           ^^ constant.character.escape
  //              ^^ constant.character.escape
  //                 ^^ constant.character.escape
  //                    ^^ constant.character.escape

  // Unicode escape sequences
  io.debug("\u{1b} \u{000a} \u{01F600}")
  //        ^^^^^^ constant.character.escape
  //               ^^^^^^^^ constant.character.escape
  //                        ^^^^^^^^^^ constant.character.escape
}
