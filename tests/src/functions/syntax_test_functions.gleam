// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

// TODO: better scope for type-annotating `->`

import gleam/io

pub fn main() {
// <- storage.modifier
//  ^^ storage.type.function
//     ^^^^ entity.name.function
//            ^ punctuation.section.block.begin
  io.debug(double(10))
  // ^^^^^ variable.function
  //       ^^^^^^ variable.function
  //              ^^ constant.numeric.decimal

  // Higher-order functions
  io.debug(twice(1, add_one))

  // Anonymous functions
  let add_two = fn(a) { a + 2 }
  //            ^^ storage.type.function
  //               ^ source - TODO: recognize function parameter
  //                  ^ punctuation.section.block.begin
  //                      ^ keyword.operator.arithmetic
  //                          ^ punctuation.section.block.end

  io.debug(twice(1, add_two))

  // Function captures
  let times_two = multiply(2, _)
  //                          ^ source - TODO: scope for this?

  io.debug(times_two(10))
}
// <- punctuation.section.block.end

fn double(a: Int) -> Int {
// <- storage.type.function
// ^^^^^^ entity.name.function
//        ^^ variable.parameter
//           ^^^ entity.name.type
  multiply(a, 2)
  // <- variable.function
}

fn multiply(a: Int, b: Int) -> Int {
// <- storage.type.function
// ^^^^^^^^ entity.name.function
//          ^^ variable.parameter
//             ^^^ entity.name.type
//                ^ punctuation.separator
//                  ^^ variable.parameter
//                     ^^^ entity.name.type
//                          ^^ keyword.operator
//                             ^^^ entity.name.type
  a * b
}

fn twice(argument: Int, function: fn(Int) -> Int) -> Int {
//                                ^^ storage.type.function
//                                   ^^^ entity.name.type
//                                        ^^ keyword.operator
//                                           ^^^ entity.name.type
//                                                ^^ keyword.operator
//                                                   ^^^ entity.name.type
  function(function(argument))
  // <- variable.function
  //       ^^^^^^^^ variable.function
}

fn add_one(argument: Int) -> Int {
  argument + 1
}
