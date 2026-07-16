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



//MARK: defer
/*
 The defer keyword in Swift is used to delay the execution of a block of code until the current scope exits.

 Think of it as a cleanup block. No matter how the function exits (normal return, error, or early return), the code inside defer will always execute before leaving the scope.

 Real-Life Example

 Imagine you're using a meeting room.

 Enter the room.
 Lock the door.
 Finish your work.
 Unlock the door before leaving.

 Instead of remembering to unlock the door in every possible exit point, you can simply say:

 "When I'm about to leave, unlock the door."

 That's exactly what defer does.
 */

func test() -> String {
    defer {
        print("Goodbye")
    }

    print("Hello")
    return "Done"
}

print(test())

func test1() -> String {
    defer {
        print("Goodbye3")
    }
    defer {
        print("Goodbye")
    }
    defer {
        print("Goodbye1")
    }
    defer {
        print("Goodbye2")
    }

    print("Hello")
    return "Done"
}

print(test1())
