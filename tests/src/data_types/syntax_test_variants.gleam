// SYNTAX TEST "Packages/Gleam/package/Gleam.sublime-syntax"

import gleam/io

  pub type Season {
//^^^ storage.modifier
//    ^^^^ storage.type
//         ^^^^^^ entity.name.type
//                ^ punctuation.section.block.begin
  Spring
//^^^^^^ entity.name.type
  Summer
//^^^^^^ entity.name.type
  Autumn
  Winter
}
// <- punctuation.section.block.end

pub fn main() {
  io.debug(weather(Spring))
  //               ^^^^^^ entity.name.type
  io.debug(weather(Autumn))
}

fn weather(season: Season) -> String {
  case season {
    Spring -> "Mild"
//  ^^^^^^ entity.name.type
    Summer -> "Hot"
    Autumn -> "Windy"
    Winter -> "Cold"
  }
}
