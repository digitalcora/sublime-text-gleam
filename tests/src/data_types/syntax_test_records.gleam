// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub type SchoolPerson {
  Teacher(name: String, subject: String)
//^^^^^^^ entity.name.type
//        ^^^^^ constant.other
//              ^^^^^^ entity.name.type
//                    ^ punctuation.separator
//                      ^^^^^^^^ constant.other
  Student(String)
//        ^^^^^^ entity.name.type
}

pub fn main() {
  let teacher1 = Teacher("Mr Schofield", "Physics")
//^^^ keyword.other
//             ^ keyword.operator.assignment
//               ^^^^^^^ entity.name.type
//                       ^^^^^^^^^^^^^^ string.quoted
//                                     ^ punctuation.separator
//                                       ^^^^^^^^^ string.quoted
  let teacher2 = Teacher(name: "Miss Percy", subject: "Physics")
//                       ^^^^^ constant.other
//                                           ^^^^^^^^ constant.other
  let student1 = Student("Koushiar")
//               ^^^^^^^ entity.name.type
//                       ^ string.quoted
  let student2 = Student("Naomi")
  let student3 = Student("Shaheer")

  let school = [teacher1, teacher2, student1, student2, student3]
  io.debug(school)
}
