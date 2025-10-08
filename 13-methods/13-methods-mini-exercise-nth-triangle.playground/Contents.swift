

/*:
 ## Methods Mini-exercise, Nth Triangle
 Add a type method to the `Math` structure that calculates the n-th triangle number. It will be very similar to the factorial formula, except instead of multiplying the numbers, you add them.
 */

struct Math {
    static func factorial(of number: Int) -> Int {
        (1...number).reduce(1, *)
    }
    static func triangleNumber(n: Int) -> Int {
        (1...n).reduce(0, +)
    }
}

Math.factorial(of: 5) // 120
Math.triangleNumber(n: 6) // 21
