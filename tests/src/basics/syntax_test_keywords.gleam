// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

pub fn main() {
  echo [1, 2, 3]
  // <- keyword.other
  //    ^ constant.numeric.decimal
  //     ^ punctuation.separator
  //       ^ constant.numeric.decimal
  //        ^ punctuation.separator
}
