// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io
import gleam/string

pub fn main() {
  "1"
  |> string.append("2")
//^^ keyword.operator
//          ^^^^^^ variable.function
//                 ^^^ string.quoted.double
  |> string.append("3", _)
//^^ keyword.operator
//                 ^^^ string.quoted.double
//                    ^ punctuation.separator
  |> io.debug
//      ^^^^^ source - TODO: recognize as function?
}
