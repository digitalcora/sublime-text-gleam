// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io
import gleam/result

pub fn main() {
  use username <- result.try(get_username())
//^^^ keyword.other
//             ^^ keyword.operator - TODO: fix `-` being `arithmetic`
//                       ^^^ variable.function
//                           ^^^^^^^^^^^^ variable.function
  use password <- result.try(get_password())
  use greeting <- result.map(log_in(username, password))
  io.debug(greeting <> ", " <> username)

  use <- debug_it()
//^^^ keyword.other
//    ^^ keyword.operator
//       ^^^^^^^^ variable.function
  "Hello, Joe!"
}

fn get_username() {
  Ok("alice")
}

fn get_password() {
  Ok("hunter2")
}

fn log_in(_username: String, _password: String) {
  Ok("Welcome")
}

fn debug_it(func: fn() -> a) -> a {
  io.debug(func())
}
