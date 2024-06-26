import Foundation

//Structs are fast!
//Stored in the stack (memory)
//Value types - they are copied and mutated (changed)

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    //Structs have an implicit init
    
    //if you want to write it manually...
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    //Swift creates this init automatically with each struct
    
    //So why write one ourselves??? So that we can customize it
    //For example, lets make it so that there is a default value for date
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    //Lets try with an optional
    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello, world!"

let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)

print(myQuiz.title)


//-----------------------------------
//lets learn how to mutate (edit) a struct

//This is an example of an "Immutable Struct" - the values are made on constants
//The benefit here, is that when this struct is passed around your app, we know that the data
//is never changing. It will always have those values
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    user1 = UserModel(name: user1.name, isPremium: true)
}

//markUserAsPremium()
//this is how you "change" and immutable struct. By copying the data into a new object and changing the correct variable on creating. So some of the old is brought over and some of the new is added

//This works but it's not the way we do it

//-----------------------------------

//This is a mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool
    
    //this would be the correct way to do it. If we know that a variable in the object can change, don't make it a const
}

var user2 = UserModel2(name: "Benji", isPremium: false)

func markUserAsPremium2() {
    print("Is premium: ", user2.isPremium)
    user2.isPremium = true
    print("Updating status...")
    print("Is premium: ", user2.isPremium)
}

markUserAsPremium2()

//-----------------------------------
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    //it is better to put these functions INSIDE the struct
    //because now the struct is in charge of changing it's own data
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
    
    func markUserAsNotPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3 = UserModel3(name: "Benji", isPremium: false)
user3 = user3.markUserAsPremium(newValue: false)


//-----------------------------------

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    //Since the object is updating it's own var, we can set it as a private variable
    //So by using "private(set)" we are saying that we can only set that var with the functions inside the struct. This prevents sloppy code from breaking the object
    
    //because an object cannot change itself without mutating, we have to create a special function and call it "mutating func", otherwise the compiler won't allow this
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Benji", isPremium: false)
user4.markUserAsPremium() //set to true
print("Prem Status: ", user4.isPremium)

//update prem status
user4.updateIsPremium(newValue: false)
print("Prem status: ", user4.isPremium)
