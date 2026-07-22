//: [Previous](@previous)

import Foundation


/*
 What is a Closure?
 A closure is a block of code that you can store in a variable or pass to another function.

 Think of it as a function without a name.
 
 Normal Function

 func greet(name: String) {
     print("Hello \(name)")
 }

 greet(name: "Arabaz")

 Closure version

 let greet = { (name: String) in
     print("Hello \(name)")
 }

 greet("Arabaz")

 Notice there is no function name.
 */
// Closure with Parameters
let sum = { (a: Int, b: Int) -> Int in
    return a + b
}

print(sum(10, 5))

//Closure with No Parameters
let welcome = {
    print("Welcome")
}
print(welcome)

//Closure Returning Value
let square = { (number: Int) -> Int in
    return number * number
}
print(square(6))

//MARK: Trailing Closure
/*When the last parameter of a function is a closure, Swift allows us to write that closure outside the parentheses.*/




//Escaping Closure

func fetchData(completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completion()
    }
}

fetchData {
    print("Data l   `oaded")
}

//Non-Escaping Closure
//Autoclosure
//Capture Values

//Strong Capture, Weak Capture, Unowned Capture

//Retain Cycle Example

//Completion Handler


