import Foundation

//var likeCount: Double = 5
//var commentCount: Double = 0
//var viewCount: Double = 100

//some operators
//likeCount = 5 + 1 //no no
//likeCount = likeCount + 1 // yes
//likeCount += 1
//likeCount += 5

//Multiplication
//likeCount = likeCount * 1.5
//likeCount *= 1.5

//Division
//likeCount = likeCount / 2
//likeCount /= 2

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("post does NOT have 5 likes")
}

if likeCount != 5 {
    print("post does NOT have 5 likes")
}

if likeCount > 5 {
    print("post has more than 5 likes")
}

if likeCount >= 5 {
    print("post has 5 or more likes")
}

if likeCount < 5 {
    print("post has less than 5 likes")
}

if likeCount <= 5 {
    print("post has 5 or fewer likes")
}

if likeCount > 3 && commentCount > 0 {
    print("Post has greater than 3 likes AND greater than 0 comments.")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes OR greater than 0 comments.")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments")
}

var userIsPremium: Bool = true
var userIsNew: Bool = true

if userIsPremium == true && userIsNew == true {
    print("User is Premium AND user is new")
}

if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 2 {
    print("Like count > 2")
} else if userIsPremium {
    print("user is premium")
} else {
    print("final else statement")
}
