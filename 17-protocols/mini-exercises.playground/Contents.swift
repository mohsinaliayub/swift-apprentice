

//: Create a protocol `Area` that defines a read-only property `area` of type `Double`.
protocol Area {
    var area: Double { get }
}

//: Implement `Area` with structs representing `Square`, `Triangle`, and `Circle`.
struct Square: Area {
    let side: Double
    
    var area: Double {
        side * side
    }
}

struct Triangle: Area {
    let base: Double
    let height: Double
    
    var area: Double  {
        0.5 * base * height
    }
}

struct Circle: Area {
    let radius: Double
    
    var area: Double  {
        .pi * radius * radius
    }
}

//: Add a circle, square, and triangle to an array. Compute the total area of shapes in the array.

let square = Square(side: 4)
let triangle = Triangle(base: 3, height: 5)
let circle = Circle(radius: 2)

let shapes: [any Area] = [square, triangle, circle]
let total = shapes.reduce(0) { $0 + $1.area }
print(total)
