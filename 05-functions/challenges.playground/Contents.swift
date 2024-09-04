import Foundation

/*:
 ### Challenge 1: Looping with stride functions
 
 In the last chapter you wrote some `for` loops with ranges. Ranges are limited in that they must always be increasing. The Swift `stride(from:to:by:)` and `stride(from:through:by:)` functions let you loop much more flexibly.  For example, if you wanted to loop from 10 to 20 by 4s you can write:
 
 ```swift
 for index in stride(from: 10, to: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18
 
 for index in stride(from: 10, through: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18, and 22
 ```
 
 - What is the difference between the two stride function overloads?
 - Write a loop that goes from 10.0 to (and including) 9.0, decrementing by 0.1.
 */

// stride(from:to:by:) does NOT include the final number (like half-open range)
// stride(from:through:by:) does include the final number (like closed range)

for index in stride(from: 10, through: 9, by: -0.1) {
  print(index)
}


/*:
 ### Challenge 2: It’s prime time
 
 When I’m acquainting myself with a programming language, one of the first things I do is write a function to determine whether or not a number is prime. That’s your second challenge.
 
 First, write the following function:
 
 ```swift
 func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool
 ```
 
 You’ll use this to determine if one number is divisible by another. It should return `true` when `number` is divisible by `divisor`.
 
 **Hint**: You can use the modulo (`%`) operator to help you out here.
 
 Next, write the main function:
 
 ```swift
 func isPrime(_ number: Int) -> Bool
 ```
 
 This should return `true` if `number` is prime, and `false` otherwise. A number is prime if it’s only divisible by 1 and itself. You should loop through the numbers from 1 to the number and find the number’s divisors. If it has any divisors other than 1 and itself, then the number isn’t prime. You’ll need to use the `isNumberDivisible(_:by:)` function you wrote earlier.
 
 Use this function to check the following cases:
 
 ```swift
 isPrime(6) // false
 isPrime(13) // true
 isPrime(8893) // true
 ```
 
 **Hint 1**: Numbers less than 0 should not be considered prime. Check for this case at the start of the function and return early if the number is less than 0.
 
 **Hint 2**: Use a `for` loop to find divisors. If you start at two and end before the number itself, then as soon as you find a divisor, you can return `false`.
 
 **Hint 3**: If you want to get *really* clever, you can simply loop from two until you reach the square root of `number` rather than going all the way up to `number` itself. I’ll leave it as an exercise for you to figure out why. It may help to think of the number 16, whose square root is 4. The divisors of 16 are 1, 2, 4, 8 and 16.
 */

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    
    if number <= 3 { return true } // 2 & 3 are both prime numbers
    
    let doubleNumber = Double(number)
    // find the square root and convert it to an Int, as sequencing
    // through Double values requires more work and will increase our
    // computations by a lot.
    let root = Int(doubleNumber.squareRoot())
    
    
    for divisor in 2...root {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)


/*: 
 ### Challenge 3: Recursive functions
 
 In this challenge, you will see what happens when a function calls *itself*, a behavior called **recursion**. This may sound unusual, but it can be quite useful.
 
 You’re going to write a function that computes a value from the **Fibonacci sequence**. Any value in the sequence is the sum of the previous two values. The sequence is defined such that the first two values equal 1. That is, `fibonacci(1) = 1` and `fibonacci(2) = 1`.
 
 Write your function using the following declaration:
 
 ```swift
 func fibonacci(_ number: Int) -> Int
 ```
 
 Then, verify you’ve written the function correctly by executing it with the following numbers:
 
 ```swift
 fibonacci(1)  // = 1
 fibonacci(2)  // = 1
 fibonacci(3)  // = 2
 fibonacci(4)  // = 3
 fibonacci(5)  // = 5
 fibonacci(10) // = 55
 ```
 
 **Hint 1**: For values of `number` less than 0, you should return 0.
 
 **Hint 2**: To start the sequence, hard-code a return value of 1 when `number` equals 1 or 2.
 
 **Hint 3**: For any other value, you’ll need to return the sum of calling `fibonacci` with `number - 1` and `number - 2`.
*/

func fibonacci(_ number: Int) -> Int {
    guard number > 0 else { return 0 }
    
    if number <= 2 { return 1 }
    
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)

