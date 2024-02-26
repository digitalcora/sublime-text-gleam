// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

const floats = [1.0, 2.0, 3.0]
// <- keyword.other
//    ^^^^^^ entity.name.constant
//           ^ keyword.operator.assignment
//              ^^^ constant.numeric.decimal

const ints: List(Int) = [1, 2, 3]
// <- keyword.other
//    ^^^^ entity.name.constant
//          ^^^^ entity.name.type
//               ^^^ entity.name.type
//                    ^ keyword.operator.assignment
//                       ^ constant.numeric.decimal

pub fn main() {
  io.debug(ints)
  io.debug(ints == [1, 2, 3])

  io.debug(floats)
  io.debug(floats == [1.0, 2.0, 3.0])
}
