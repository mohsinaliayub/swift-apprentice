import UIKit

/*:
## Types & Operations Challenges
 */

/*:
### Challenge 1: Coordinates
 Create a constant called coordinates and assign a tuple containing two and three to it.
 */

let coordinates = (2, 3)



/*:
 ### Challenge 2: Named Coordinate
 Create a constant called namedCoordinate with a row and column component.
 */

let namedCoordinate = (row: 2, column: 3)



/*:
 ### Challenge 3: Which are valid?
 Which of the following are valid statements?
 ``` swift
 let character: Character = "Dog"
 let character: Character = "🐶"
 let string: String = "Dog"
 let string: String = "🐶"
 ```
 */

// 1. Invalid, because a Character data type can only hold one letter.
// 2. Valid, because an emoji is one character.
// 3. Valid
// 4. Valid



/*:
 ### Challenge 4: Does it compile?
 ``` swift
 let tuple = (day: 15, month: 8, year: 2015)
 let day = tuple.Day
 ```
 */

// It does not compile, because there is no named component 'Day'.
// Swift is case-sensitive, so you need to pay attention to the proper
// case of letters.



/*:
 ### Challenge 5: Find the error
 What is wrong with the following code?
 ``` swift
 let name = "Matt"
 name += " Galloway"
 ```
 */


// name is a constant. You cannot change its value once it has been assigned a value.



/*:
 ### Challenge 6: What is the type of value?
 What is the type of the constant named value?
 ``` swift
 let tuple = (100, 1.5, 10)
 let value = tuple.1
 ```
 */


// Double



/*:
 ### Challenge 7: What is the value of month?
 What is the value of the constant named month?
 ``` swift
 let tuple = (day: 15, month: 8, year: 2015)
 let month = tuple.month
 ```
 */

8


/*:
 ### Challenge 8: What is the value of summary?
 What is the value of the constant named summary?
 ``` swift
 let number = 10
 let multiplier = 5
 let summary = "\(number) multiplied by \(multiplier) equals \
 (number * multiplier)"
 ```
 */


"10 multiplied by 5 equals 50"



/*:
 ### Challenge 9: Compute the value
 What is the sum of a and b, minus c?
 ``` swift
 let a = 4
 let b: Int32 = 100
 let c: UInt8 = 12
 ```
 */
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let result = a + Int(b) - Int(c)


/*:
 ### Challenge 10: Different precision of pi.
 
 What is the numeric difference between Double.pi and Float.pi?
 */

// If you run the following code, you can see the difference.
// Double offers a precision upto 15 decimal points, but
// Float only offers a precision of upto 6 decimal points.
Double.pi
Float.pi

