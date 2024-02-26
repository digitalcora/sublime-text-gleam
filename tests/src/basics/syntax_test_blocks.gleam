// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  let fahrenheit = {
    //             ^ punctuation.section.block.begin
    let degrees = 64
    //          ^ keyword.operator.assignment
    degrees
  }
  // <- punctuation.section.block.end

  let celsius = { fahrenheit - 32 } * 5 / 9
  //            ^ punctuation.section.block.begin
  //                         ^ keyword.operator.arithmetic
  //                              ^ punctuation.section.block.end

  io.debug(celsius)
}
