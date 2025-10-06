// CHARACTERS

let name = "Ma\u{0302}tt Gallo\u{0308}way"
let sixthChar = name[name.index(name.startIndex, offsetBy: 5)]
for char in name {
  for scalar in char.unicodeScalars {
    print(scalar.value, terminator: " ")
  }
  print("")
}


// SUBSTRINGS

func nameLength(name: String) -> (Int, Int) {
  let spaceIndex = name.firstIndex(of: " ")
  guard let spaceIndex else {
    return (name.count, 0)
  }

  let firstNameLength = name.distance(from: name.startIndex, to: spaceIndex)
  let lastNameLength = name.distance(from: spaceIndex, to: name.endIndex) - 1
  return (firstNameLength, lastNameLength)
}
nameLength(name: "Matt Galloway")


// CHARACTER PROPERTIES

let str = "There are 4 sides to a square.\nAnd 6 sides to a cube."
for char in str {
  print(char, terminator: " ")
  if char.isLetter {
    print("isLetter")
  } else if char.isNumber {
    print("isNumber")
  } else if char.isNewline {
    print("isNewLine")
  } else if char.isWhitespace {
    print("isWhitespace")
  } else if char.isASCII {
    print("isASCII")
  }
}
