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
