import UIKit

/*:
 # Optionals Mini-exercises
 
 ## CREATING OPTIONALS
 
 Make an optional String called myFavoriteSong. If you have a favorite song, set
 it to a string representing that song. If you have more than one favorite song or
 no favorite, set the optional to nil.
 */
let myFavoriteSong: String? = nil


/*:
 
 Create a constant called parsedInt and set it equal to Int("10"), which tries to
 parse the string 10 and convert it to an Int. Check the type of parsedInt using
 Option-Click. Why is it an optional?
*/
var parsedInt = Int("10") // optional Int because we can provide non-integer string as an argument


/*:
 
 Change the string being parsed in the above exercise to a non-integer (try dog,
 for example). What does parsedInt equal now?
*/

parsedInt = Int("dog") // <-- nil


/*:
 ## UNWRAPPING OPTIONALS
 
 
 Using your myFavoriteSong variable from earlier, use optional binding to check
 if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t
 have a favorite song."
 */
if let song = myFavoriteSong {
    print(song)
} else {
    print("I don't have a favorite song.")
}


/*:
 
 Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a
 string; if it’s a string, set it to nil. Observe how your printed result changes.
 teenager if your age is not between 13 and 19.
 */
// go above and change ``myFavoriteSong`` value, then re-run the whole playground.


