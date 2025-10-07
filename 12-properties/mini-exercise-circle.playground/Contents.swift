
/*:
 
 ## Properties Mini-exercise, Circle
 Of course, you should absolutely trust the value of pi from the standard library. It’s a type property and you can access it as `Double.pi`. Given the `Circle` example above:

1. Remove the lazy stored property `pi`. Use the value of pi from the Swift standard library instead.
2. Remove the initializer. Since `radius` is the only stored property now, you can rely on the automatically included initializer.
*/
struct Circle {
    var radius = 0.0
    var circumference: Double {
        .pi * radius * 2
    }
}

var circle = Circle(radius: 5)
let circumference = circle.circumference // 31.42
