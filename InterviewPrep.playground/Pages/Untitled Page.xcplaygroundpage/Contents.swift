//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//MARK: Retain Cycle (Strong Reference Cycle)
class Person {
    var appartment: Appartment?
    
    deinit{
        print("Person removed")
    }
}

class Appartment {
    var tenant: Person?
    
    deinit {
        print("Appartment removed")
    }
}

var john: Person = Person()
var flat: Appartment = Appartment()
john.appartment = flat
flat.tenant = john

print(john)
print(flat)

/*
 //john = nil
 //flat = nil

 You might expect both objects to be removed.
 But they aren't.
 Each object still strongly references the other.
 Reference count never reaches 0.
 This is a retain cycle.
 
 How do we solve it?
 Use weak or unowned.
 */
