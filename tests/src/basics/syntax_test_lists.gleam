// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  let ints = [1, 2, 3]
  //          ^ constant.numeric.decimal
  //           ^ punctuation.separator
  //             ^ constant.numeric.decimal
  //              ^ punctuation.separator

  io.debug([-1, 0, ..ints])
  //               ^^ keyword.operator
}
