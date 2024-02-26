// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  let x = "Original"
  // <- keyword.other
  //    ^ keyword.operator.assignment
  io.debug(x)

  let _score = 1000
  //  ^^^^^^ comment.line

  let _name: String = "Gleam"
  //  ^^^^^ comment.line
  //         ^^^^^^ entity.name.type
  //                ^ keyword.operator.assignment
}
