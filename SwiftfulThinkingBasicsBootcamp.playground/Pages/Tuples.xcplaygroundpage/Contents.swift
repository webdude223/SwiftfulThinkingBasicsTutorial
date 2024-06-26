import Foundation

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    //return userName
    userName //same as above line
}
func getUserIsPremium() -> Bool {
    userIsPremium
}

func getUserInfo() -> String {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    //do something
    return name
}
//this is an example of a function being unable to return two sets of data
//there is a bool and a string, but this function can only return one
//to solve this, we use a tuple

//This function has two return types, and we tell the compiler this by wrapping in
//parathensis

//tuple can combine multiple peices of data
func getUserInfo2() -> (String, Bool) {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    //do something
    return (name, isPremium)
}

//we can use tuples in a variable or a constant

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo2()
//info1 now is a tuple with two sets of data (kind of like an array)
//to get the data out...
let name1 = info1.0 //access index 0
let name2 = info1.1 //access index 1

//this can be confusing, since the index is not clear. so lets solve this...

func getUserInfo3() -> (name: String, isPremium: Bool) {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    //do something
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name
let isPremium = info2.isPremium

//Final example
func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

//we can pass in the tuple return from one function into the next
func doSomethingWithUserInfo(info:(name: String, isPremium: Bool, isNew: Bool)) {
    //do something
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)

//tuples are a good tool, and while you can use this in much larger sets, it is better to use something called a "type", which is in the next section
