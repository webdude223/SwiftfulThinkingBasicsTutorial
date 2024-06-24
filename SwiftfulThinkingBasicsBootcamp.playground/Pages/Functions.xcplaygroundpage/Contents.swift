import Foundation

func myFirstFunction() {
    print("My first function called")
    mySecondFunction()
}

func mySecondFunction() {
    print("My second function called")
    myThirdFunction()
}

func myThirdFunction() {
    print("My second function called")
}

myFirstFunction()


func getUserName() {
    let username = "Nick"
    print(username)
}

getUserName()

//username is private to the function
//The below print doesn't work
//print(username)

//Data return type
func getUserName1() -> String {
    let username: String = "Benji"
    return username
}

//can only set a var/let of type string and function return type string
let name: String = getUserName1()

print(name)

// ---------------------------------------------


//don't put vars in global scale, instead drop in new function
//var userDidCompleteOnboarding: Bool = false
//var userProfileIsCreated: Bool = true

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
//    let status = checkUserStatus(didCompleteOnboarding: BooluserDidCompleteOnboarding, profileIsCreated: BooluserProfileIsCreated)
    //this is some weird fucking syntax, pay attention!
    
//    if status == true {
//        print("Show Home Screen")
//    } else {
//        print("Show Onboarding Screen")
//    }
}

//now we need to pass the data into the function from "showFirstScreen"
func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}


// ---------------------------------------------

func doSomething() {
    var isNew: Bool = false
    
    if isNew {
        print("NEW")
    } else {
        print("IS NOT NEW")
    }
}
//if no clear return type is specified, it is a void return

func doSomething1() -> Void {
    
}

func doSomethingElse() {
    var title: String = "Avengers"
        
    //A guard statement confirms that a condition is true
    //if not, end function early
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}

doSomethingElse()


func test() {
    print("Hello World")
}

test()

//Calculated Variable
//essentially they are functions

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

//So in this example, if result1 doesn't require passing in variables to the function, you can write this as a calculated variable
//see example below

var calculatedNumber: Int {
    return number1 + number2
}

//the only difference is that you don't have to pass in a variable here to calculate a result
