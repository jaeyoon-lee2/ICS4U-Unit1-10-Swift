/*
This program get the name of planet as string input,
matches with enumeration and shows the planet position.
author  Jay Lee
version 1.0
since   2021-05-04
*/

enum InvalidInputError : Error {
  case invalidInput
}

enum Planet : String, CaseIterable {
  case Mercury = "first"
  case Venus = "second"
  case Earth = "third"
  case Mars = "fourth"
  case Jupiter = "fifth"
  case Saturn = "sixth"
  case Uranus = "seventh"
  case Neptune = "eighth"

  static func withLabel(_ label: String) -> Planet? {
    return self.allCases.first{ "\($0)" == label }
  }
}

// Input
print("Enter the name of the planet: ", terminator:"")
let planetString = String(readLine()!)

do {
  guard let planet = Planet.withLabel(planetString) else{
    throw InvalidInputError.invalidInput
  }
  // Output
  print("\(planet) is the \(String(planet.rawValue)) "
        + "planet in the solar system.");
  
} catch {
  print("The planet with entered name does not exist.")
}


print("\nDone.")
