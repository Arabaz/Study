//: [Previous](@previous)

import Foundation

/*
 ● Generic: A way to write flexible and reusable code by working with any data type, defined using placeholders.
 ● Generics are declared using <T> or similar type parameters.
 */

func add<T: Numeric>(a: T, b: T) -> T{
    return a + b
}
print(add(a: 10.6, b: 20))


func swapValues<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapValues(a: &x, b: &y)
print(x, y)

var a = "Hello"
var b = "World"
swapValues(a: &a, b: &b)
print(a, b)




func swap<T>(a1:inout T, b1:inout T) {
    var temp = a1
    a1 = b1
    b1 = temp
}

var x1 = 10
var x2 = 20
swap(a1: &x1, b1: &x2)
print(x1, x2)


func swapTwoValue<T>(a1: inout T, a2: inout T){
    let temp = a1
    a1 = a2
    a2 = temp
}

var a1 = "10B"
var a2 = "20A"
swapTwoValue(a1: &a1, a2: &a2)
print(a1, a2)
