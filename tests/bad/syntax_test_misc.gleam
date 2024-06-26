// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

// TODO: move these into valid Gleam files in `src`

// == Inline type annotations vs. named fields

let thing: Foo = bar()
//  ^^^^^ source - TODO: more specific scope
//         ^^^ entity.name.type
//               ^^^ variable.function

let Foo(id: id) = thing
//      ^^^ constant.other
//          ^^ source - TODO

let Foo(bar: Bar(baz: Baz(9, {two + four}, _unused))) = thing
//  ^^^ entity.name.type
//      ^^^^ constant.other
//           ^^^ entity.name.type
//               ^^^^ constant.other
//                    ^^^ entity.name.type
//                        ^ constant.numeric
//                           ^ punctuation.section.block.begin
//                                ^ keyword.operator.arithmetic
//                                      ^ punctuation.section.block.end
//                                       ^ punctuation.separator
//                                         ^^^^^^^ comment.line
//                                                    ^ keyword.operator.assignment

func_call(something, with: 9, some: other_func(Foo), arguments: 1)
// <- variable.function
//                   ^^^^^ constant.other
//                            ^^^^^ constant.other
//                                  ^^^^^^^^^^ variable.function
//                                             ^^^ entity.name.type
//                                                   ^^^^^^^^^^ constant.other

// == Import aliases

import gleam/io as foo
//     ^^^^^^^^ entity.name.namespace
//              ^^ keyword.control.import
//                 ^^^ entity.name.namespace - TODO: bug?
import gleam/io.{println as bar}
//     ^^^^^^^^ entity.name.namespace
//             ^ punctuation.accessor
//              ^ punctuation.definition.generic.begin
//               ^^^^^^^ source - TODO: function/type name?
//                       ^^ keyword.control.import
//                          ^^^ source - TODO: function/type name?
//                             ^ punctuation.definition.generic.end

// == Imported types, multiple imports

import gleam/option.{type Option, Some, None}
//                   ^^^^ storage.type
//                        ^^^^^^ entity.name.type
//                              ^ punctuation.separator
//                                ^^^^ entity.name.type

// == Anonymous functions in arguments

call_me(maybe: fn(here is: MyNumber) { Nil })
//      ^^^^^^ constant.other
//             ^^ storage.type.function
//                ^^^^ constant.other
//                     ^^^ variable.parameter
//                         ^^^^^^^^ entity.name.type
//                                   ^ punctuation.section.block.begin
//                                     ^^^ entity.name.type
//                                         ^ punctuation.section.block.end

nested(
  one: 1,
  two: fn(arg) {
    let func = fn(i) {
//  ^^^ keyword.other
//             ^^ storage.type.function
//                   ^ punctuation.section.block.begin
      let assert 1 = { 2 - 1 }
//    ^^^ keyword.other
//        ^^^^^^ keyword.other
//               ^ constant.numeric
//                 ^ keyword.operator.assignment
//                   ^ punctuation.section.block.begin
//                           ^ punctuation.section.block.end
      let assert 2 = { 1 + 1 }
      let assert 3 = { 5 - 2 }
//    ^^^ keyword.other
//        ^^^^^^ keyword.other

      arg + i
    }
//  ^ punctuation.section.block.end
  },
  three: "3"
//^^^^^^ constant.other
//       ^^^ string.quoted.double
)
