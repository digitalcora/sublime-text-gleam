// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  // TODO: begin/end?
  let triple = #(1, 2.2, "three")
  //             ^ constant.numeric
  //              ^ punctuation.separator
  //                ^^^ constant.numeric
  //                   ^ punctuation.separator
  //                     ^ string.quoted
  io.debug(triple)

  let #(a, _, _) = triple
  io.debug(a)
  io.debug(triple.1)
  //             ^ punctuation.accessor
  //              ^ constant.numeric

  let pair: #(Int, String) = #(1, "Hi!")
  //          ^^^ entity.name.type
  //             ^ punctuation.separator
  //               ^^^^^^ entity.name.type
  io.debug(pair)
}
