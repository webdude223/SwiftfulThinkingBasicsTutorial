import Foundation

let someConstant: Bool = true //this is a const

var someVariable: Bool = true // this is a variable

var userIsPremium: Bool = true // this is a boolean

//Long form if statement
if userIsPremium == true {
    print("1 - User is Premium")
} else {
    print("1.1 - User is NOT Premium")
}

//Short form -- checks bool for true by default
if userIsPremium {
    print("2 - User is Premium")
}

if userIsPremium == false {
    print("3 - User is not Premium")
}

//Short hand

if !userIsPremium {
    print("4 - User is not Premium")
}

