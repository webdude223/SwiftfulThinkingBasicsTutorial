import Foundation

/**

 
 Object oriented programming
 
 during the life of your app, we create and destroy objects
 //create - initialize (init) an object (create for the first time) -- we are alocating (adding) it into memory
 //Destroy - Deinitalizer (deinit) = Dealocating (removing) from memory
 
 Swift has "Automatic Reference Counting" (ARC) - very common interview question
 it's a live count of the number of objects in memory
 The more objects in memory, the higher the count, the slower the app performs
 -- we want to keep the arc count as low as possible (while still running the app)
 --We want to create only when we need it, and destroy them as soon as we don't need them
 
 If app has two screens, and user is moving from screen 1 to screen 2, when we move, we only want to create screen 2 when we need it. When we get to screen 2, we want to deallocate screen 1
 
 
 
 there are two types of memory (on iphone)
 - Stack & Heap
 - only objects i the heap are counted towards ARC
 
 
 objects in the stack
 - String, Bool, Int, most basic types
 - Struct, Enum
 
 Objects in the Heap
 - functions
 - classes
 - actors
 
 Objects stored in HEAP count towards ARC. Objects in stack do not
 
 The iphone is a "multi-threaded environment"
 a thread is an "engine"
 multi-thread mean "multiple engines running at one time"
 So you can put code on one thread of multiple threads
 Each thread has it's own stack, but there is only one heap for all threads
 
 Therefore:
 the stack is faster, lower memory footprint
 The heap is slower, higher memory footprint, risk of threading issues (multiiple threads accessing the same object at the same time)
 
 The stack is preferred
 
 Every screen in SwiftUI is a struct BECAUSE it's stored on a stack and is faster
 
 ---- Value vs Reference type
Objects in the stack are "Value" types
 - when you create a value object you are creating a copy of it with new data
 - example: if I create a boolean then set it from true to false, I am created a copy of that value and now there are two
 
 Objects in the heap are reference type
 - when you edit a reference type, you edit the original object
 - the existing version is being changed, not copied and duplicated
 - This reference is called a pointer, because it's pointing to the object in the heap in memory
 

 */

struct MyFirstObject {
    let title: String = "Hello world!"
}

class MySecondObject {
    let title: String = "Hello world!"
}

//Struct and Classes look exactly alike, the only difference is their value type
//Struct is in the Stack, which is a value type
//Class is in the Heap, which is a reference type


//Class vs Struct explained to a 5-Year old

//Imagine a school and in the school there are classrooms
//Within each class, there are quizzes
//during the day, teachers will hand out many different quizzes to difference classes. The students will answer the quizzes and return them back to the teacher

// school = app
// classroom = class
// quiz = Struct

// so if we are editing or changing a class, we are changing the "classroom" or the actual room. This is a referencial memory object. The source changes.
//We create the classroom once and then do a bunch of stuff inside

//The struct is a quiz. We will copy, change them, move them, etc. They are in stack memory, and are much smaller objects that are easier to move, change, and work with


//we want to use a CLASS for things like:
// - "Manager" "DataService" "Service" "Factory" "ViewModel"
// - Objects that we create and want to perform actions inside

//We want to use STRUCT for things like:
// - Data models (String, booleans, data)
// - Objects that we create and pass around our app
