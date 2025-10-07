
/*:
 ## Properties Challenge 1
 
 Rewrite the `IceCream` structure below to use default values and lazy initialization:
 
 ```
 /// struct IceCream {
 ///   let name: String
 ///   let ingredients: [String]
 /// }
 ```
 
 1. Use default values for the properties.
 2. Lazily initialize the `ingredients` array.

 */
struct IceCream {
    var name = "Vanilla"
    lazy var ingredients: [String] = {
        ["sugar", "milk", "yolks", "cream", "vanilla"]
    }()
}

var iceCream = IceCream()

// ingredients not yet initialized
iceCream.ingredients.append("strawberries")

// ingredients initialized before appending
iceCream.name = "Strawberry"
