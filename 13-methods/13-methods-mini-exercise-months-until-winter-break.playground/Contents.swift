
/*:
 ## Methods Mini-exercise, Months Until Winter Break
 Since `monthsUntilWinterBreak()` returns a single value and there's not much calculation involved, transform the method into a computed property with a getter component.
 */
let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

struct SimpleDate {
    var month: String
    
    var monthsUntilWinterBreak: Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: month)!
    }
}

let date = SimpleDate(month: "October")
date.monthsUntilWinterBreak // 2
