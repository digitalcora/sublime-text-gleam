// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  io.debug(calculate(1, add: 2, multiply: 3))
  //                    ^^^^ constant.other
  //                         ^ constant.numeric
  //                          ^ punctuation.separator
  //                            ^^^^^^^^^ constant.other
}

fn calculate(value: Int, add addend: Int, multiply multiplier: Int) {
//                       ^^^ constant.other
//                           ^^^^^^^ variable.parameter
//                                   ^^^ entity.name.type
  value * multiplier + addend
}
