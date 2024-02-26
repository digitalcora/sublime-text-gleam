// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io
import gleam/int

pub fn main() {
  // Multiple subjects
  let result = case int.random(2), int.random(2) {
    0, 0 -> "Both are zero"
//  ^ constant.numeric
//   ^ punctuation.separator
//     ^ constant.numeric
//          ^ string.quoted
    0, _ -> "First is zero"
    _, 0 -> "Second is zero"
    _, _ -> "Neither are zero"
  }
  io.debug(result)

  // Alternative patterns
  let result = case int.random(10) {
    2 | 4 | 6 | 8 -> "This is an even number"
//  ^ constant.numeric
//    ^ keyword.operator
//      ^ constant.numeric
//        ^ keyword.operator
//          ^ constant.numeric
//            ^ keyword.operator
//              ^ constant.numeric
//                   ^ string.quoted
    1 | 3 | 5 | 7 -> "This is an odd number"
    _ -> "I'm not sure"
  }
  io.debug(result)
}
