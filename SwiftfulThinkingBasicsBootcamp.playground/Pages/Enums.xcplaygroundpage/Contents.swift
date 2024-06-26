import Foundation

//ENUM is the same as struct, but we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

//Structs cannot be mutated
enum CarBrandOption {
    case ford
    case toyota
    case honda
    
    //this can also be written with comma
    //case ford, toyota, honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
        default:
            return "Default"
        }
    }
}
    
//(var)(var name)(Var type) = (struct call and init)
//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "Toyota", model: "Rav4")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Hilux")

//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "Toyota")
//
//var car1 = CarModel(brand: brand1, model: "Fiesta")
//var car1 = CarModel(brand: brand1, model: "Focus")
//var car1 = CarModel(brand: brand1, model: "Camry")

//So from this example, if we knew that "Ford" and "Toyota" were the ONLY brands we wanted on the app, we would use an ENUM.
//But if there are infinitely more options, we would use a Struct

//The nice thing about ENUM is that when creating a new object, you can enter a period (.) into the init and see the available options
var car1 = CarModel(brand: .ford, model: "Focus")
var car2 = CarModel(brand: .ford, model: "Fiesta")
var car3 = CarModel(brand: .toyota, model: "Camry")

//Enums are prefered in code because they are easier to fill in rather than typing out a full struct call
//the set back is that we have to know all the cases when writing the code,

var fordBrand: CarBrandOption = .ford

print(fordBrand.title)
