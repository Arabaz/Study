//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//MARK: Count vowels
var vowelsCount = 0
var totalAlphabets = 0
var totalConst = 0
for i in greeting{
    if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" || i == "A" || i == "E" || i == "I" || i == "O" || i == "U"{
        vowelsCount += 1
    }
    if i >= "a" && i <= "z" || i >= "A" && i <= "Z"{
        totalAlphabets += 1
    }
    
    if (i >= "a" && i <= "z" || i >= "A" && i <= "Z") && !(i == "a" || i == "e" || i == "i" || i == "o" || i == "u" || i == "A" || i == "E" || i == "I" || i == "O" || i == "U"){
        totalConst += 1
    }
}
print("Total vowel :\(vowelsCount)")
print("Total Const :\(totalConst)")
print("Total Alphabets :\(totalAlphabets)")

vowelsCount = 0
totalConst = 0
totalAlphabets = 0
let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

greeting = "Hello, playgroundHello, playgroundHello, playground"

for char in greeting{
    if char.isLetter{
        totalAlphabets += 1
        if vowels.contains(char){
            vowelsCount += 1
        }else{
            totalConst += 1
        }
    }
}
print("Total vowel :\(vowelsCount)")
print("Total Const :\(totalConst)")
print("Total Alphabets :\(totalAlphabets)")


greeting = "Hello, playgroundHello, playgroundHello, playgroundHello, playgroundHello, playgroundHello, playground"

let totalAlphabets1 = greeting.filter { $0.isLetter}
vowelsCount = greeting.filter { vowels.contains($0) }.count
totalConst = greeting.filter { $0.isLetter && !vowels.contains($0) }.count

print("Total vowel :\(vowelsCount)")
print("Total Const :\(totalConst)")
print("Total Alphabets :\(totalAlphabets1.count)")


