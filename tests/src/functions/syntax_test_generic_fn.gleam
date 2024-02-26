// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub fn main() {
  let exclaim = fn(x) { x <> "!" }
  io.debug(twice("Hello", exclaim))
}

fn twice(argument: value, function: fn(value) -> value) -> value {
//                 ^^^^^ source - TODO: scope for this?
//                                  ^^ storage.type.function
//                                            ^^ keyword.declaration.function
  function(function(argument))
}
