// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

  pub type DateTime
//^^^ storage.modifier
//    ^^^^ storage.type
//         ^^^^^^^^ entity.name.type

// TODO: erlang/javascript
@external(erlang, "calendar", "local_time")
  @external(javascript, "./ffi.mjs", "now")
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^^^^^^^^ variable.other.constant
//                    ^ punctuation.separator
//                      ^^^^^^^^^^^ string.quoted
//                                 ^ punctuation.separator
//                                   ^^^^^ string.quoted

  pub fn now() -> DateTime
//^^^ storage.modifier
//    ^^ storage.type.function
//       ^^^ entity.name.function
//             ^^ keyword.declaration.function
//                ^^^^^^^^ entity.name.type

pub fn main() {
  io.debug(now())
}
