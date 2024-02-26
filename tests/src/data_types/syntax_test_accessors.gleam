// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

pub type SchoolPerson {
  Teacher(name: String, subject: String)
  Student(name: String)
}

pub fn main() {
  let teacher = Teacher("Mr Schofield", "Physics")
  let student = Student("Koushiar")

  io.debug(teacher.name)
  //              ^ punctuation.accessor
  io.debug(student.name)
}
