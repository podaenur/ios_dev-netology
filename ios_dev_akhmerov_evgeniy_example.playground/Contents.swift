import Foundation

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

let value1 = Speaker.freelancer             // тип let value1: Speaker          // значение: freelancer
let value2 = Speaker.SexType.girl           // тип let value2: Speaker.SexType  // значение: girl
let value3 = Speaker.Params.sex(.boy)       // тип let value3: Speaker.Params   // значение: sex с ассоциативным значением (Speaker.SexType.boy)
let value4 = Speaker.Params.name("Boris")   // тип let value4: Speaker.Params   // значение: name с ассоциативным значением ("Boris")
let value5 = value1.details                 // тип let value5: String           // значение: "This is `freelancer`"


//*** Структуры - Structs ***
//https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

struct Somebody {
    
    let name: String
    var age: Int
    
    mutating func set(name: String) {
        self = Somebody(name: name, age: self.age)
    }
}

var value6 = Somebody(name: "Vladimir", age: 73)    // значние: value6 = name: "Vladimir", age: 73
value6.set(name: "Igor")                            // значние: value6 = name: "Igor", age: 73


//*** Опциональные типы - Optionals ***
//https://developer.apple.com/documentation/swift/optional

let value7: Int? = 5        // value7 = 5
var value8: Int?            // value8 = nil
var value9: String?         // value9 = nil

let isEqual = value7 == value8  // isEqual = false
value9                          // значение: nil

struct FirstChain {
    let value: SecondChain?
}

struct SecondChain {
    let value: ThirdChain?
}

struct ThirdChain {
    let name: String?
}

let value10 = FirstChain(value: SecondChain(value: ThirdChain(name: "Kirill")))     // тип: let value10: FirstChain
value10.value?.value?.name                                                          // значение: "Kirill"

let value11 = FirstChain(value: nil)        // тип: let value11: FirstChain
value11.value?.value?.name                  // значение nil

//***
