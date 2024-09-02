import UIKit

/*:
 # Advanced Control Flow Mini-exercises
 
 ## FOR LOOP
 
 Create a constant named range and set it equal to a range starting at 1 and
 ending with 10 inclusive. Write a for loop that iterates over this range and prints
 the square of each number.
 */
let range = 1...10
for number in range {
    let square = number * number
    print("Square of \(number) is: \(square)")
}


/*:
 
 Write a for loop to iterate over the same range as in the exercise above and print
 the square root of each number. You’ll need to type convert your loop constant.
*/
for number in range {
    let squareRoot = sqrt(Double(number))
    print("Square-root of \(number) is: \(squareRoot)")
}

/*:
 ```swift
    var sum = 0
    for row in 0..<8 {
        if row % 2 == 0 {
            continue
        }
        for column in 0..<8 {
            sum += row * column
        }
    }
 ```
 
 Above, you saw a for loop that iterated over only the even rows like so:
 
 Change this to use a where clause on the first for loop to skip even rows instead of
 using continue. Check that the sum is 448, as in the initial example.
*/

var sum = 0
for row in 0..<8 where row % 2 == 1 {
    for column in 0..<8 {
        sum += row *  column
    }
}
print(sum)
/*:
 ## SWITCH STATEMENTS
 
 
 Write a switch statement that takes an age as an integer and prints out the life
 stage related to that age. You can make up the life stages or use my
 categorization: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39,
 Adult; 40-60, Middle-aged; 61+, Elderly.
 */
let myAge = 30

switch myAge {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
case _ where myAge >= 61:
    print("Elderly")
default:
    print("Invalid age")
}

/*:
 
 Write a switch statement that takes a tuple containing a string and an integer.
 The string is a name, and the integer is an age. Use the same cases you used in
 the previous exercise and let syntax to print out the name followed by the life
 stage. For example, for myself, it would print out "Matt is an adult.".
 */

let person = ("Matt", 30)
switch person {
case (let name, 0...2):
    print("\(name) is a infant")
case (let name, 3...12):
    print("\(name) is a child")
case (let name, 13...19):
    print("\(name) is a teenager")
case (let name, 20...39):
    print("\(name) is an adult")
case (let name, 40...60):
    print("\(name) is a middle aged")
case let (name, age) where age >= 61:
    print("\(name) is a elderly")
default:
    print("Invalid age")
}

