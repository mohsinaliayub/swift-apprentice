
/*:
 ### Challenge 2
 Implement `deinit` for each class. Place your `c` inside of a `do { }` scope which will cause the reference count to go to zero when it exits the scope. What order are the classes deinitialized in?
 */
class A {
    init() {
        print("I'm A!(1)")
    }
    deinit {
        print("Destroy A")
    }
}

class B: A {
    deinit {
        print("Destroy B")
    }
    override init() {
        print("I'm B!(1)")
        super.init()
        print("I'm B!(2)")
    }
}

class C: B {
    deinit {
        print("Destroy C")
    }
    override init() {
        print("I'm C!(1)")
        super.init()
        print("I'm C!(2)")
    }
}

do {
    let _ = C()
}
/*:
 ### Challenge 3
 Cast the instance of type `C` to an instance of type `A`. Which casting operation do you use and why?
 */
do {
    let c = C()
    let _ = c as A
    // The `as` keyword can be used because `C` is a subtype of `A`.
}
/*:
 ### Challenge 4
 Create a subclass of `StudentAthlete` called `StudentBaseballPlayer` and include properties for `position`, `number`, and `battingAverage`.  What are the benefits and drawbacks of subclassing `StudentAthlete` in this scenario?
 */
class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct Grade {
    let letter: String
    let points: Double
}

class Student: Person {
    var grades: [Grade] = []
}

class StudentAthlete: Student {
    var sports: [String] = []
}

class StudentBaseballPlayer: StudentAthlete {
    var battingAverage = 0.0
    var number: Int
    var position: String
    
    init(firstName: String, lastName: String, number: Int, position: String) {
        self.number = number
        self.position = position
        super.init(firstName: firstName, lastName: lastName)
    }
}

/*
 Benefits:
 
 - Automatically get properties all student atheletes will have - grades and names
 - Type relationship with superclasses. StudentBaseballPlayer _is_ a Student
 
 Drawbacks:
 
 - An initializer that is beginning to get bloated
 - `sports` is a bit awkward to a baseball player object
 - Deep class hierarchy would make similar classes difficult. For instance, an almost identical class would need to be made for a `SoftballPlayer` who joined a league after graduating. They would no longer be a `Student`, only a `Person`!
 */





