// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

//// A module containing some unusual functions and types.
// <- punctuation.definition.comment.line
//^^ punctuation.definition.comment.line
//   ^ comment.line

/// A type where the value can never be constructed.
// <- punctuation.definition.comment.line
//^ punctuation.definition.comment.line
//  ^ comment.line
pub type Never {
  // An ordinary comment for completeness.
//^^ punctuation.definition.comment.line
//   ^ comment.line
  Never(Never)
}
