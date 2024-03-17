// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

// TODO: use `constant.numeric.integer.x` and `constant.numeric.float.x`

import gleam/io

pub fn main() {
  // Underscores
  io.debug(1_000_000)
  //       ^^^^^^^^^ constant.numeric.decimal
  io.debug(10_000.01)
  //       ^^^^^^^^^ constant.numeric.decimal

  // Binary, octal, and hex Int literals
  io.debug(0b00001111)
  //       ^^^^^^^^^^ constant.numeric.binary
  io.debug(0o17)
  //       ^^^^ constant.numeric.octal
  io.debug(0xF)
  //       ^^^ constant.numeric.hexadecimal

  // TODO: Scientific notation Float literals
  io.debug(7.0e7)
  io.debug(3.0e-4)

  // Unary negation
  io.debug(-1)
  //       ^ keyword.operator.arithmetic
  //        ^ constant.numeric.decimal
}
