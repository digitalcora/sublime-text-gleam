// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

// TODO: use `constant.numeric.integer.x` and `constant.numeric.float.x`

import gleam/io

pub fn main() {
  // Binary, octal, and hex Int literals
  io.debug(0b00001111)
  //       ^^^^^^^^^^ constant.numeric.binary
  io.debug(0o17)
  //       ^^^^ constant.numeric.octal
  io.debug(0xF)
  //       ^^^ constant.numeric.hexadecimal

  io.debug(7.0e7)
  //       ^^^^^ constant.numeric.decimal
  io.debug(3.0e-4)
  //       ^^^^^^ constant.numeric.decimal

  // Unary negation
  io.debug(-1)
  //       ^ keyword.operator.arithmetic
  //        ^ constant.numeric.decimal

  // Underscores
  io.debug(1_000_000)
  //       ^^^^^^^^^ constant.numeric.decimal
  io.debug(1_000.01_01)
  //       ^^^^^^^^^^^ constant.numeric.decimal
  io.debug(2.0e2_0)
  //       ^^^^^^^ constant.numeric.decimal
  io.debug(0b0010_1101)
  //       ^^^^^^^^^^^ constant.numeric.binary
  io.debug(0o17_34)
  //       ^^^^^^^ constant.numeric.octal
  io.debug(0xFA_2B)
  //       ^^^^^^^ constant.numeric.hexadecimal
}
