// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  // Invalid string escape sequence
  io.debug("\a")
  //        ^ invalid.illegal

  // Invalid digits in unicode escape sequence
  io.debug("\u{001g}")
  //        ^ invalid.illegal

  // Too many digits in unicode escape sequence
  io.debug("\u{001b2fc}")
  //        ^ invalid.illegal
}
