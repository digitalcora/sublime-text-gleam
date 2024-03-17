// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  io.debug(1 + 1)
  //       ^ constant.numeric.decimal
  //         ^ keyword.operator.arithmetic
  //           ^ constant.numeric.decimal

  io.debug(5 - 1)
  //         ^ keyword.operator.arithmetic
  io.debug(5 / 2)
  //         ^ keyword.operator.arithmetic
  io.debug(3 * 3)
  //         ^ keyword.operator.arithmetic
  io.debug(5 % 2)
  //         ^ keyword.operator.arithmetic

  io.debug(2 > 1)
  //         ^ keyword.operator
  io.debug(2 < 1)
  //         ^ keyword.operator
  io.debug(2 >= 1)
  //         ^^ keyword.operator
  io.debug(2 <= 1)
  //         ^^ keyword.operator

  io.debug(1.0 +. 1.5)
  //           ^^ keyword.operator.arithmetic
  io.debug(5.0 -. 1.5)
  //           ^^ keyword.operator.arithmetic
  io.debug(5.0 /. 2.5)
  //           ^^ keyword.operator.arithmetic
  io.debug(3.0 *. 3.5)
  //           ^^ keyword.operator.arithmetic

  io.debug(2.2 >. 1.3)
  //           ^^ keyword.operator
  io.debug(2.2 <. 1.3)
  //           ^^ keyword.operator
  io.debug(2.2 >=. 1.3)
  //           ^^^ keyword.operator
  io.debug(2.2 <=. 1.3)
  //           ^^^ keyword.operator

  io.debug(100 == 100)
  //           ^^ keyword.operator
  io.debug(1.5 != 0.1)
  //           ^^ keyword.operator

  io.debug(True && False)
  //            ^^ keyword.operator.logical
  io.debug(True && True)
  //            ^^ keyword.operator.logical
  io.debug(False || False)
  //             ^^ keyword.operator.logical
  io.debug(False || True)
  //             ^^ keyword.operator.logical
}
