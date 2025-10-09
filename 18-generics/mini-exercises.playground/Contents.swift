
class Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Dog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Keeper<Animal> {
    var name: String
    var morningCare: Animal
    var afternoonCare: Animal
    
    init(name: String, morningCare: Animal, afternoonCare: Animal) {
        self.name = name
        self.morningCare = morningCare
        self.afternoonCare = afternoonCare
    }
}
// Mini-exercise 1: Try instantiating another `Keeper`, but this time for dogs.

// let us suppose that Sally is the name of a person who looks after dogs, a dog named "Benji" in the morning and dog named "Rufus" in the afternoon

let sally = Keeper(name: "Sally", morningCare: Dog(name: "Benji"), afternoonCare: Dog(name: "Rufus"))

// Mini-exercise 2: What do you think would happen if you tried to instantiate a `Keeper` with a dog in the morning and a cat in the afternoon?

// This app does not drive a nuclear reactor. The best way to find out is to try! Uncomment the following line

// let caroline = Keeper(name: "Caroline", morningCare: Dog(name: "Mattie"), afternoonCare: Cat(name: "Dexter"))

/*
 The error we get is the following: conflicting arguments to generic parameter 'Animal' ('Dog' vs 'Cat').
 
 This is exactly what we'd expect. Swift needs the generic parameter `Animal` to take one type, so there is a conflict if `morningCare` parameter and the `afternoonCare` parameter expect different types.
 */

// Mini-exercise 3: What happens if you try to instantiate a `Keeper`, but for strings?

// This works. As you'll learn in the next section, type constraints can help you avoid this problem.

let stringKeeper = Keeper(name: "StringKeeper", morningCare: "", afternoonCare: "")



