// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

   import a as b; import c; import d;
// ^^^^^^ keyword
//        ^ entity.other
//          ^^ keyword
//             ^ entity.name
//              ^ punctuation.terminator
//                ^^^^^^ entity.name (?!)
//                       ^^ invalid.illegal
//                          ^^^^^^ keyword

  import aa/bb/cc.{
//^^^^^^ keyword.control.import
//       ^^^^^^ entity.other.module-path - entity.name.namespace - entity.other.aliased.namespace
//             ^^ entity.other.aliased.namespace
//               ^ punctuation.accessor
//                ^ punctuation.definition.generic.begin

  type Aa as Bb,
//^^^^ storage.type
//     ^^ entity.other.aliased.type
//        ^^ keyword.other.alias
//           ^^ entity.name.type
//             ^ punctuation.separator

  type Cc,
//^^^^ storage.type
//     ^^ entity.name.type
//       ^ punctuation.separator

  Dd as Ee,
//^^ entity.other.aliased.function.constructor
//   ^^ keyword.other.alias
//      ^^ entity.name.function.constructor
//        ^ punctuation.separator

  Ff,
//^^ entity.name.function.constructor
//  ^ punctuation.separator

  gg as hh,
//^^ entity.other.aliased.constant
//   ^^ keyword.other.alias
//      ^^ entity.name.constant
//        ^ punctuation.separator

  ii,
//^^ entity.name.constant
//  ^ punctuation.separator

} as dd
// <- punctuation.definition.generic.end
//^^ keyword.other.alias
//   ^^ entity.name.namespace

import non/aliased.{cons, func}
//     ^^^^ entity.other.module-path - entity.name.namespace - entity.other.aliased.namespace
//         ^^^^^^^ entity.name.namespace
//                  ^^^^ entity.name.constant


// === Fragments

import
// <- keyword.control.import
import qq as
//     ^^ entity.other.aliased.namespace
//        ^^ keyword.other.alias
import rr/ss/
//     ^^^ entity.other.module-path
//        ^^ entity.name.namespace


// === Unqualified item fragments

import xx.{
// <- keyword.control.import
  type ,
//^^^^ storage.type
//     ^ punctuation.separator
  Yy as ,
//^^ entity.other.aliased.function.constructor
//   ^^ keyword.other.alias
//      ^ punctuation.separator
  zz as
//^^ entity.other.aliased.constant
//   ^^ keyword.other.alias
}
// <- punctuation.definition.generic.end
