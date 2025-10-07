
/*:
 ## Properties Mini-exercise, TV
 Do you have a television or a computer monitor? Measure the height and width, plug it into a `TV` struct, and see if the diagonal measurement matches what you think it is.
 */

// Picture of real TV: https://1.bp.blogspot.com/_lToCdYsa_6Y/TUbNORiitgI/AAAAAAAAABg/WSYmogK0bLc/s1600/compare02.gif

struct TV {
    var height: Double
    var width: Double
    
    var diagonal: Int {
        let result = (height * height + width * width).squareRoot().rounded()
        return Int(result)
    }
}

let tv = TV(height: 15.7, width: 28)
tv.diagonal // 32
