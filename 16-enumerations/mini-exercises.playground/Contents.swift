
/*:
 ## Enumerations Mini-exercise
 
 ### Semester Computed Property
 
 Wouldn't it be nice to request the semester from an instance like, `month.semester` instead of using the function? Add a `semester` computed property to the `Month` enumeration.
 */
enum Month: Int {
    case january = 1, february, march, april,
         may, june, july, august,
         september, october, november, december
    
    var semester: String {
        switch self {
        case .august, .september, .october, .november, .december:
            return "Autumn"
        case .january, .february, .march, .april, .may:
            return "Spring"
        case .june, .july:
            return "Summer"
        }
    }
}

var month = Month.september
let semester = month.semester // "Autumn"

/*:
 ### Months Until Winter Break Computed Property
 Make `monthsUntilWinterBreak` a computed property of the `Month` enumeration
 */
extension Month {
    var monthsUntilWinterBreak: Int {
        Month.december.rawValue - rawValue
    }
}

let fifthMonth = Month(rawValue: 5)!
let monthsLeft = fifthMonth.monthsUntilWinterBreak // 7

/*:
 ### Coin Purse
 
 Create an array called `coinPurse` that contains coins. Add an assortment of pennies, nickels, dimes and quarters to it.
 */
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}
let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

/*:
 ### Light Switch
 A household light switch is another example of a state machine. Create an enumeration for a light that can switch `.on` and `.off`.
 */
enum Light {
    case on
    case off
}

var light = Light.off
light = .on

/*:
 ### *e* Math Namespace
 The constant *e* is useful in calculations for statistical bell curves and compound growth rates. Add *e* to your `Math` namespace.
 */
import Foundation

enum Math {
    static let e = 2.7183
    
    static func factorial(of number: Int) -> Int {
        (1...number).reduce(1, *)
    }
}

let nestEgg = 25000 * pow(Math.e, 0.07 * 20) // $101,380.95
