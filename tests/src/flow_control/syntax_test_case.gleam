// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io
import gleam/int
import gleam/list

pub fn main() {
  let result = case int.random(5) {
    //         ^^^^ keyword.other
    //                            ^ punctuation.section.block.begin
    0 -> "Zero"
//  ^ constant.numeric
//    ^^ keyword.declaration.function - TODO: fix, should be operator?
//       ^^^^^^ string.quoted
    1 -> "One"
    _ -> "Other"
//  ^ source - TODO: more specific scope?
  }
//^ punctuation.section.block.end

  io.debug(result)

  // Variable patterns
  let result = case int.random(5) {
    0 -> "Zero"
    1 -> "One"
    other -> "It is " <> int.to_string(other)
//  ^^^^^ source - TODO: more specific scope?
  }

  io.debug(result)

  io.debug(get_name("Hello, Joe"))

  // List patterns
  let result = case list.repeat(int.random(5), times: int.random(3)) {
    [] -> "Empty list"
    [1] -> "List of just 1"
    [4, ..] -> "List starting with 4"
  // ^ constant.numeric
  //  ^ punctuation.separator
  //    ^^ keyword.operator
  //           ^ string.quoted
    [_, _] -> "List of 2 elements"
    _ -> "Some other list"
  }

  io.debug(result)

  io.debug(get_first_non_empty([[], [1, 2, 3], [4, 5]]))

  io.debug(get_first_larger([1, 2, 3, 4, 5], 3))
}

// String prefix patterns
fn get_name(x: String) -> String {
  case x {
    "Hello, " <> name -> name
  //^^^^^^^^^ string.quoted
  //          ^^ keyword.operator
    _ -> "Unknown"
  }
}

// List rest patterns
fn sum_list(list: List(Int), total: Int) -> Int {
  case list {
    [first, ..rest] -> sum_list(rest, total + first)
    //      ^^ keyword.operator
    //                                      ^ keyword.operator.arithmetic
    [] -> total
  }
}

// Pattern aliases
fn get_first_non_empty(lists: List(List(t))) -> List(t) {
  case lists {
    [[_, ..] as first, ..] -> first
    //       ^^ keyword.other
    //          ^^^^^ source
    //               ^ punctuation.separator
    //                 ^^ keyword.operator
    [_, ..rest] -> get_first_non_empty(rest)
    [] -> []
  }
}

// Guards
fn get_first_larger(lists: List(Int), limit: Int) -> Int {
  case lists {
    [first, ..] if first > limit -> first
    //          ^^ source - TODO: fix, should be keyword
    //                   ^ keyword.operator
    [_, ..rest] -> get_first_larger(rest, limit)
    [] -> 0
  }
}
