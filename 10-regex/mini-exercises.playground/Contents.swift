

/*: ## Mini-Exercises

 Now that you've learned how to construct regular expressions with some different capabilities, how would you adapt `/[a-z]+[0-9]+/` from earlier to match all of the example texts `abcd12345`, `swiftapprentice2025`, `XYZ567`, `Pennsylvania65000`?

 */

//The regex needs to account for upper-case letters, so changing it to /[a-zA-Z]+[0-9]+/ or even just /\w+/ would match all of the examples.
