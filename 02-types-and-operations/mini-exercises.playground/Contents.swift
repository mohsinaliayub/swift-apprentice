import UIKit

/*:
 # Types & Operations Mini-exercises
 
 ## Types
 ### Exercise 1
 Create a constant called age1 and set it equal to 42. Create a constant called age2
 and set it equal to 21. Check using Option-click that the type for both has been
 inferred correctly as Int.
 */
let age1 = 42
let age2 = 21
// both constants have been inferred as of type 'Int'


/*:
 ### Exercise 2
 Create a constant called avg1 and set it equal to the average of age1 and age2
 using the naïve operation (age1 + age2) / 2. Use Option-click to check the
 type and check the result of avg1. Why is it wrong?
*/
let avg1 = (age1 + age2) / 2
// Since both operands 'age1' and 'age2' are of type 'Int', the addition would also result in of type 'Int'.
// An integer divided by a literal without decimal point would also result in the division to be of type 'Int'
// Therefore, the resulting value will be an 'Int'. That's why the result is not correct.

/*:
 ### Exercise 3
 Correct the mistake in the above exercise by converting age1 and age2 to type
 Double in the formula. Use Option-click to check the type and check the result of
 avg1. Why is it now correct?
*/
let avg2 = (Double(age1) + Double(age2)) / 2
// Used type conversion to get the addition as a 'Double'. Therefore, when we divide the double with a literal value,
// it would result in a 'Double'. (NOTE: Literals don't have a type, their type is inferred from the expression)



/*:
 ## Strings
 ### Exercise 4
 Create a string constant called firstName and initialize it to your first name.
 Also, create a string constant called lastName and initialize it to your last name.
 */
let firstName = "Mohsin Ali"
let lastName = "Ayub"


/*:
 ### Exercise 5
 Create a string constant called fullName by adding the firstName and lastName
 constants together, separated by a space.
 */
let fullName = firstName + " " + lastName


/*:
 ### Exercise 6
 Using interpolation, create a string constant called myDetails that uses the
 fullName constant to create a string introducing yourself. For example, my string
 would read: "Hello, my name is Matt Galloway.".
 */
let myDetails = "Hello, my name is \(fullName)."


/*:
 ## Tuples
 ### Exercise 7
 Declare a constant tuple that contains three Int values followed by a Double. Use
 this to represent a date (month, day, year) followed by an average temperature
 for that date.
 */
let temperature = (6, 8, 2024, 22.7)


/*:
 ### Exercise 8
 Change the tuple to name the constituent components. Give them names related
 to the data they contain: month, day, year and averageTemperature.
 */
let temperatureNamed = (month: 6, day: 8, year: 2024, averageTemperature: 22.7)


/*:
 ### Exercise 9
 In one line, read the day and average temperature values into two constants.
 You’ll need to employ the underscore to ignore the month and year.
 */
let (_, day, _, averageTemperature) = temperatureNamed
day
averageTemperature


/*:
 ### Exercise 10
 Up until now, you’ve only seen constant tuples. But you can create variable
 tuples, too. Change the tuple you created in the exercises above to a variable by
 using var instead of let. Now change the average temperature to a new value.
 */
var temperatureVar = (month: 6, day: 8, year: 2024, averageTemperature: 22.7)
temperatureVar.averageTemperature = 15.9

temperatureVar
