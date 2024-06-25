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

//If-Let
//When an if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    
    //if there is a value, let newValue equal that value
    //NOTE: if let is  not checking for true false, only that there is a value
    if let newValue = userIsPremium {
        //Here we have access to the non-optional value
        return newValue
    } else {
        //return default value
        return false
    }
}

//another way to write this function
func checkIfUserIsPremium4() -> Bool {

    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
}

func checkIfUserIsPremium5() -> Bool {
    //new syntax short cut
//    if let newValue = userIsPremium {
//        return newValue
//    }
    
    //turns into...
    if let userIsPremium {
        return userIsPremium
    }
    
    //in this case, this creates a new variable/value that is exclusive to this scope without affecting the userIsPremium outside the function
    
    return false
}

//remember that thes function is used to check if an optional value has a value, and if so, returns a value or a default

//Guard
//When a guard is a failure, then enter closure
func checkIfUserIsPremium6() -> Bool {
    
    //Make sure there is a value
    //if there is, let newValue equal that value
    //Else return out of the function
    guard let newValue = userIsPremium else {
        return newValue
    }
    
    //Here we have access to the non-optional value
    return false
}

func checkIfuserIsPremium7() -> Bool {
    
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}

//How to unwrap options is VERY importan in swift
//There are three ways
// 1: use nil coalescing (??) and give a default value
// 2: use a if let then enter enclosure with new value
// 3: use a guard and return out of function with no value




//------------------------------------
//Complex examples

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetup() -> Bool {
    
    //this won't work, since we can't pass and optional bool into a non-optional function
    //return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    
    //This If-Let will unwrap the optional and set a value
    //if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
    
    //The above is the old way using new variables
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        //remember that this shortcut only sets a new const value INSIDE this function without adjusting the globals
        
        //userIsNew == Bool AND
        //didCompleteOnboarding == Bool AND
        //favoriteMovie == String AND
        //None of these values are NIL
        
        //Once the optional is unwrapped (confirmed as having a non-optional value) we can pass values into variable and return status
        return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    } else {
        // userIsNew == nil OR
        // didCompleteOnboarding == nil OR
        // favoriteMovie == nil
        return false
    }
}


//We are doing the above function but with a guard statement
func checkIfUserIsSetup2() -> Bool {
    
    
    guard letuserIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // didCompleteOnboarding == nil OR
        // favoriteMovie == nil
        return false
    }
    
    //userIsNew == Bool AND
    //didCompleteOnboarding == Bool AND
    //favoriteMovie == String AND
    //None of these values are NIL
    return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}


func getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: favoriteMovie) {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}


//--------------------------------
//WHEN TO USE A GUARD
//---------------------------------


//EXAMPLE 1
//layered if-let
//The problem is how confusing a layered if-let can become. It's hard to follow the logic
func checkIfUserIsSetup3() -> Bool {
    
    if let userIsNew {
        //userIsNew == bool
        
        if let userDidCompleteOnboarding {
            //userDidCompleteOnboarding == bool
            
            if let userFavoriteMovie {
                //userFavoriteMovie == String
                return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
                
            } else {
                //userFavoriteMovie == nil
                return false
            }
            
        } else {
            //userDidCompleteOnboarding == nil
            return false
        }
    } else {
        //userIsNew == nil
        return false
    }
    
   
}


//Example 2
//Layered Guard Statment
//much easier to read and understand
func checkIfUserIsSetup4() -> Bool {
    guard let userIsNew else {
        //userIsNew == nil
        return false
    }
    
    //Now in this section we know that userIsNew == Bool
    //write code here...
    guard let userDidCompleteOnboarding else {
        return false
    }
    
    guard let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    
}

func checkIfUserIsSetup5() -> Bool {
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        return false
    }
    
    guard let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus (userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}

//if you can use a guard or an if-let, guard is preferred because you don't have to go into the closure.

//In summary:
//guard checked for value is true and continues if true, only open closure if nil
//if-let checks for value and if true, opens closure, if nil, opens else


//----------------------------------

//Optional Chaining
func getUserName() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUserName()
    
    //I will get the count if the username is not nil
    let count = username?.count
    //notice that we are performing a method without unpacking the optional. We do this by using the ?
    
    let title: String = getTitle()
    
    //I will get the count always
    let count2 = title.count
    
    //in this case, we are using something called "Optional chaining" with the multiple ?
    //If username has a value, and first character in username has a value, then return value of "isLowercase
    let firstCharacterIsLowercased = username?.first?.isLowercase
    //this is important because username could be nil, but we could return the first letter "n" and the function wouldn't know the difference
    //this is a huge feature because we don't have to
    
    //Explicet unwrap
    //"I will get the count because I know 100% that username is not nil"
    let count3: Int = username!.count
    //In this case, the developer is telling the compiler that "I personally know this value is not nil"
    //The problem here is that it will crash your app if the value is nil
}


//Safely unwrap optionals
//nil coalscing
//if-let
//guard

//Explicetly unwrap optional (unsafe)
