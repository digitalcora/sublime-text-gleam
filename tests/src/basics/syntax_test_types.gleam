// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub type UserId = Int
// <- storage.modifier
//  ^^^^ storage.type
//       ^^^^^^ entity.name.type
//              ^ keyword.operator.assignment
//                ^^^ entity.name.type

pub fn main() {
  let one: UserId = 1
  let two: Int = 2

  io.debug(one == two)
}
