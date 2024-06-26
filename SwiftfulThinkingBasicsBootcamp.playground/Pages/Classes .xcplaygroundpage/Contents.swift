import Foundation

//Classes are slow
//Classes are stored in the Heap
//Objects in the heap are reference type
//Reference types point to an object in memroy and update the object in memory

// All the data needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    //Structs allow for an assumed init (compiler makes one automatically if you don't)
    //Classes do not, they are required
    
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
   
    deinit {
        //opposite of init
        //runs as the object is being removed from memory
        //structs do not have dinit
        //Not common
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

//viewModel is not an object, its a pointer, pointing to the class in the heap
//we use a let because the object itself is not changing, the data inside is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)




