import Foundation


//There is always a value, and it's either true or false
let myBool: Bool = false

//Optional variable
//We don't know if there is a value, but if there is, it is a boolean
//only optional variables can be "nil"
var myOtherBool: Bool? = nil

print(myOtherBool)
myOtherBool = true
print(myOtherBool)
myOtherBool = false
print(myOtherBool)
myOtherBool = nil
print(myOtherBool)

//To remove the "Optional()" from the printed message, add a default value
// a ?? is called a nil coalescing operator
print(myOtherBool ?? false)

//Next example

let newValue: Bool? = myOtherBool
//When setting a new variable from an optional variable, the new var must be optional as well

//Now, to get around this, we use the nil coalescing operator
let newValue2: Bool = myOtherBool ?? false
//this says "If the value is nil, then default to false" and thus we are allowed to set an optional var to a non-optional var

print("Benji", newValue2)
print("Benji 2: \(newValue2.description)")

//----------------------------------

var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    //if there is no calculation, the compiler assumes "return userIsPremium"
    userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium()
