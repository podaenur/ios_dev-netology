import UIKit

var str = "Hello world"

//*** Перечисления - Enums ***
//https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html

enum Speaker {
    case freelancer
    case employee
    
    enum Params {
        case name(String)
        case sex(SexType)
    }
    
    enum SexType: String {
        case boy
        case girl = "Lady"
    }
    
    var details: String {
        switch self {
        case .freelancer:
            return "This is `freelancer`"
        case .employee:
            return "This is `employee`"
        }
    }
}

let value1 = Speaker.freelancer
let value2 = Speaker.SexType.girl
let value3 = Speaker.Params.sex(.boy)
let value4 = Speaker.Params.name("Boris")
let value5 = value1.details


//*** Структуры - Structs ***
//https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

struct Somebody {
    
    let name: String
    var age: Int
    
    mutating func set(name: String) {
        self = Somebody(name: name, age: self.age)
    }
}

var value6 = Somebody(name: "Vladimir", age: 73)
value6.set(name: "Igor")
