//: [Previous](@previous)

import Foundation

/*
 One-Line Interview Answers
 Protocol
 “A protocol defines a set of methods and properties that a type must implement.”

 Delegate
 “Delegate is a design pattern used for communication between objects using protocols.”
 */

/*
 
 
 Protocol in Swift

 A Protocol is a blueprint or set of rules that defines what methods or properties a class, struct, or enum should have.

 It only defines the requirements, not the actual implementation.

 Simple Interview Definition

 “A protocol is a blueprint of methods and properties that can be adopted by classes, structs, or enums.”

 Real-Life Example

 Think about a company rule book:

 Attend meeting
 Complete task
 Submit report

 These rules are like a Protocol.

 Any employee who follows these rules must implement them.

 Example
 protocol EmployeeWork {
     func meeting()
     func task()
 }

 Now any class adopting this protocol must implement these methods.

 class Developer: EmployeeWork {
     
     func meeting() {
         print("Meeting attended")
     }
     
     func task() {
         print("Task completed")
     }
 }
 Delegate in Swift

 A Delegate is a design pattern used for communication between two objects using protocols.

 One object gives responsibility to another object to handle some task or event.

 Simple Interview Definition

 “Delegate is a design pattern where one object communicates or passes responsibility to another object using protocols.”

 Real-Life Example

 Imagine:

 A manager asks an employee to complete a task.
 The employee handles the work and reports back.

 Here:

 Manager = Delegator
 Employee = Delegate
 Instructions/Rules = Protocol
 Delegate Flow
 Step 1: Create Protocol

 Define rules or methods.

 protocol OfficeWork {
     func completeTask()
 }
 Step 2: Create Delegate Variable
 weak var delegate: OfficeWork?
 Step 3: Another Class Adopts Protocol
 class Employee: OfficeWork {
     
     func completeTask() {
         print("Task completed")
     }
 }
 Step 4: Call Delegate Method
 delegate?.completeTask()
 Why We Use Delegate?

 Delegates are used for:

 Communication between classes
 Passing data
 Handling events
 Reducing dependency between objects
 Writing reusable code
 Real iOS Examples

 Apple uses delegates everywhere:

 UITableViewDelegate
 UICollectionViewDelegate
 UITextFieldDelegate
 UIScrollViewDelegate
 Protocol vs Delegate
 Protocol    Delegate
 Defines rules    Handles communication
 Blueprint    Design pattern
 Contains method declarations    Uses protocol methods
 
 */

// MARK: - Protocol
protocol TestDelegate: AnyObject {
    func meeting()
    func task()
    func report()
}

// MARK: - Class A
class A {
    
    // Delegate variable
    weak var delegate: TestDelegate?
    
    func startOfficeWork() {
        print("A started office work\n")
        
        delegate?.meeting()
        delegate?.task()
        delegate?.report()
    }
}

// MARK: - Class B
class B: TestDelegate {
    
    func meeting() {
        print("Meeting completed")
    }
    
    func task() {
        print("Task completed")
    }
    
    func report() {
        print("Report submitted")
    }
}

// MARK: - Object Creation
let objA = A()
let objB = B()

// Assign delegate
objA.delegate = objB

// Call function
objA.startOfficeWork()
