// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  print_score(10)
  print_score(100_000)
  print_score(-1)
}

pub fn print_score(score: Int) {
  case score {
    score if score > 1000 -> io.println("High score!")
    score if score > 0 -> io.println("Still working on it")
    _ -> panic as "Scores should never be negative!"
    //   ^^^^^ keyword.other
    //         ^^ keyword.other
    //            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
  }
}

pub fn todo_with_reason() {
  todo as "I haven't written this code yet!"
//^^^^ keyword.other
//     ^^ keyword.other
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
}

pub fn todo_without_reason() {
  todo
//^^^^ keyword.other
}

pub fn unsafely_get_first_element(items: List(a)) -> a {
  let assert [first, ..] = items
//^^^ keyword.other
//    ^^^^^^ keyword.other
//                 ^ punctuation.separator
//                   ^^ keyword.operator
//                       ^ keyword.operator.assignment
  first
}
