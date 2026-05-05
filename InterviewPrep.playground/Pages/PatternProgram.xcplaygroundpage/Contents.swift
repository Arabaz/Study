//: [Previous](@previous)

import Foundation

//MARK: ⭐ 1. Square Pattern
/*
 * * * *
 * * * *
 * * * *
 * * * *
*/
let n = 4
for _ in 0..<n {
    for _ in 0..<n {
        print("*", terminator: " ")
    }
    print()
}

//MARK: ⭐ 2. Right-Angled Triangle
/*
 *
 * *
 * * *
 * * * *
 */
for i in 1..<n + 1 {
    for _ in 0..<i {
        print("*", terminator: " ")
    }
    print()
}

//MARK: ⭐ 3. Inverted Triangle
/*
* * * *
* * *
* *
*
*/

for i in stride(from: 4, to: 0, by: -1){
    for _ in 0..<i{
        print("*", terminator: " ")
    }
    print()
}

//MARK: ⭐ 4. Pyramid Pattern
/*
    *
   * *
  * * *
 * * * *
 */
print("-----")
for i in 0..<4{
    
    if i <= 3{
        for _ in i..<3{
            print(" ", terminator: "")
        }
    }
    
    for _ in 0..<(i + 1) {
        print("*", terminator: " ")
    }
    print()
}
print("-----")


//let n = 4

for i in 0..<n {
    
    // spaces
    for _ in i..<(n - 1) {
        print(" ", terminator: "")
    }
    
    // stars
    for _ in 0..<(i + 1) {
        print("*", terminator: " ")
    }
    
    print()
}
