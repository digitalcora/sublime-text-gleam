// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

    @deprecated("Use new_function instead")
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^^^^^^^^^^ variable.other.constant
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
pub fn old_function() {
  Nil
}

pub fn new_function() {
  Nil
}
