import UIKit

/*:
 ## Expressions, Variables & Constants Mini-exercises
 ### Exercise 1
Declare a constant of type `Int` called `myAge` and set it to your age.
 */
let myAge: Int = 29


/*:
 ### Exercise 2
 Declare a variable of type `Double` called `averageAge`. Initially, set it to your own age. Then, set it to the average of your age and my own age of `30`.
*/
var averageAge: Double = 29
averageAge += 30
averageAge /= 2


/*:
 ### Exercise 3
 Create a constant called `testNumber` and initialize it with whatever integer you’d like. Next, create another constant called `evenOdd` and set it equal to `testNumber` modulo 2. Now change `testNumber` to various numbers. What do you notice about `evenOdd`?
*/
let testNumber: Int = 23
let evenOdd: Int = testNumber % 2



/*:
 ### Exercise 4
 Create a variable called `answer` and initialize it with the value `0`. Increment it by `1`. Add `10` to it. Multiply it by `10`. Then, shift it to the right by `3`. After all of these operations, what’s the answer?
*/
var answer: Int = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3
// answer = 13
