// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  io.debug(<<3>>)
  //       ^^ punctuation.definition.generic.begin
  //         ^ constant.numeric
  //          ^^ punctuation.definition.generic.end

  io.debug(<<6147:size(16)>>)
  //       ^^ punctuation.definition.generic.begin
  //              ^^^^ keyword.other
  //                   ^^ constant.numeric
  //                      ^^ punctuation.definition.generic.end

  io.debug(<<"Hello, Joe!":utf8>>)
  //         ^^^^^^^^^^^^^ string.quoted
  //                       ^^^^ keyword.other
}
