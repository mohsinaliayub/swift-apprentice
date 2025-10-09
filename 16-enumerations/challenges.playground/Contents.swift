
/*:
 ## Enumerations
 
 ### Challenge 1
 
 Taking the coin example from earlier in the chapter, begin with an array of coins.
 
 ```swift
 /// enum Coin: Int {
 ///   case penny = 1
 ///   case nickel = 5
 ///   case dime = 10
 ///   case quarter = 25
 /// }
 ///
 /// let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]
 ```
 
 Write a function where you can pass in the `coinPurse`, add up the value and return the number of cents.
 */
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func value(for purse: [Coin]) -> Int {
    var balance = 0
    for coin in purse {
        balance += coin.rawValue
    }
    return balance
}

value(for: coinPurse) // 77 cents

// An advanced way to do the same thing is to use a higher order function like `reduce(_:combine:)`:

let quickPurseValue = coinPurse.reduce(0) { $0 + $1.rawValue }
quickPurseValue // 77 cents

/*:
 ### Challenge 2
 
 Taking the example from earlier in the chapter, begin with the `Month` enumeration:
 
 ```swift
 /// enum Month: Int {
 ///   case january = 1, february, march, april, may, june, july, august, september, october, november, december
 /// }
 ```
 
 Write a computed property to calculate the number of months until summer.
 
 **Hint:** You’ll need to account for a negative value if summer has already passed in the current year. To do that, imagine looping back around for the next full year.
 */
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
    var monthsUntilSummer: Int {
        var monthsLeft = Month.june.rawValue - self.rawValue
        if monthsLeft < 0 {
            monthsLeft += 12
        }
        return monthsLeft
    }
}

let month = Month.november
let monthsLeft = month.monthsUntilSummer // 7

/*:
 ### Challenge 3
 
 Taking the map example from earlier in the chapter, begin with the `Direction` enumeration:
 
 ```swift
 /// enum Direction {
 ///   case north
 ///   case south
 ///    case east
 ///    case west
 /// }
 ```
 
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after a set of movements:
 
 ```swift
 /// let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]
 ```
 
 **Hint:** Use a tuple for the location:
 
 ```swift
 /// var location = (x: 0, y: 0)
 ```
 */
enum Direction {
    case north
    case south
    case east
    case west
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

for movement in movements {
    switch movement {
    case .north:
        location.y += 1
    case .south:
        location.y -= 1
    case .east:
        location.x += 1
    case .west:
        location.x -= 1
    }
}

let currentX = location.x // 1
let currentY = location.y // -2

