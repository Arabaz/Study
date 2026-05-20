import Foundation


class Person{
    var name: String?
    init(name: String) {
        self.name = name
    }
}

var objA = Person(name: "Abc")
print(objA.name!)

var objB = objA
objB.name = "Xyz"

print(objA.name!)
print(objB.name!)

struct Person1 {
    var name: String
}

var person1 = Person1(name: "Arabaz")
var person2 = person1

person2.name = "Ahamad"

print(person1.name) // Arabaz
print(person2.name) // Ahamad

// Classes support inheritance.

class Animal {
    func sound() {
        print("Animal sound")
    }
}

class Dog: Animal {
    override func sound() {
        print("Bark")
    }
}

let dog = Dog()
dog.sound()

/*
 In Swift, class and struct are very important concepts and commonly asked in iOS interviews.

🔹 Difference Between Class and Struct in Swift
 Feature                    Struct              Class
 Type                       Value Type          Reference Type
 Stored In                  Stack (generally)   Heap
 Copy Behavior              Creates new copy    Shares same reference
 Inheritance                ❌ Not supported    ✅ Supported
 Deinitializer              ❌ No deinit        ✅ Supports deinit
 Mutability                 mutating required   Not required
 ARC                        ❌ No               ✅ Yes
 Identity Operator (===)    ❌ No               ✅ Yes
 
 🔹 1. Struct = Value Type:- When you assign a struct to another variable, Swift creates a new copy.

 struct Person {
     var name: String
 }

 var person1 = Person(name: "Arabaz")
 var person2 = person1

 person2.name = "Ahamad"

 print(person1.name) // Arabaz
 print(person2.name) // Ahamad
 ✅ Explanation
 person2 gets its own copy
 Changing person2 does NOT affect person1

 🔹 2. Class = Reference Type:- Classes share the same memory reference.

 class Person {
     var name: String
     
     init(name: String) {
         self.name = name
     }
 }

 var person1 = Person(name: "Arabaz")
 var person2 = person1

 person2.name = "Ahamad"

 print(person1.name) // Ahamad
 print(person2.name) // Ahamad
 ✅ Explanation
 Both variables point to the same object
 Changing one affects the other
 
 🔹 3. Inheritance
 Struct ❌

 Structs cannot inherit.

 Class ✅

 Classes support inheritance.

 class Animal {
     func sound() {
         print("Animal sound")
     }
 }

 class Dog: Animal {
     override func sound() {
         print("Bark")
     }
 }

 let dog = Dog()
 dog.sound()
 
 🔹 4. Mutating Function in Struct:- Struct methods that modify properties must use mutating.

 struct Counter {
     var value = 0
     
     mutating func increment() {
         value += 1
     }
 }
 Class does not need mutating
 class Counter {
     var value = 0
     
     func increment() {
         value += 1
     }
 }
 
 🔹 5. Deinitializer:- Only classes support deinit.

 class Test {
     
     init() {
         print("Initialized")
     }
     
     deinit {
         print("Deallocated")
     }
 }
 
 🔹 6. Identity Operator (===):-  Used only with classes.

 class User {}

 let u1 = User()
 let u2 = u1

 print(u1 === u2) // true
 Structs do not support this because they are copied.
 
 🔹 When to Use Struct vs Class
 ✅ Use Struct When:
 Data is simple
 No inheritance needed
 Want safer immutable behavior
 Example:
 Models
 API response objects
 Coordinates
 Enums-related data
 struct UserModel {
     let id: Int
     let name: String
 }
 ✅ Use Class When:
 Need inheritance
 Need shared mutable state
 Need reference semantics
 Need deinit
 class NetworkManager {
     static let shared = NetworkManager()
 }

 🔹 Interview One-Line Answer

 Structs are value types and create copies on assignment, while classes are reference types and share the same memory reference.

 🔹 Apple Recommendation

 Apple recommends:

 “Use structs by default unless you specifically need class features.”

 SwiftUI heavily uses structs:
 View
 State
 Model (many cases)

 UIKit heavily uses classes:
 UIViewController
 UIView
 UITableView
 
 */
