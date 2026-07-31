//: [Previous](@previous)

import Foundation

//MARK: Find two numbers whose sum equals the target.

let Input = [2,7,11,15]
let target = 18

for i in 0..<Input.count {
    for j in (i + 1)..<Input.count {
        if Input[i] + Input[j] == target{
            print("Indices: \(i) \(j)")
            break
        }
    }
}
/*
 Time Complexity
 Time: O(n²)
 Space: O(1)
 */

var map = [Int: Int]()
for i in 0..<Input.count {
    let complement = target - Input[i]
    
    if let previousIndex = map[complement] {
        print("Indices: \(previousIndex) \(i)")
        break
    }
    map[Input[i]] = i
}


var seen = Set<Int>()
for num in Input{
    let comp = target - num
    
    if seen.contains(comp) {
        print(comp, num)
    }
    seen.insert(num)
}


//MARK: Sort 0s and 1s ⭐⭐⭐⭐⭐
var Input1 = [1, 0, 1, 0, 0, 1]
//Output:0 0 0 1 1 1

var index = 0
for i in 0..<Input1.count{
    if Input1[i] == 0{
        Input1[index] = 0
        index += 1
    }
}
for i in index..<Input1.count {
    Input1[i] = 1
}
print(Input1)
//O(n) + O(n) = O(2n)

var Input2 = [1, 0, 1, 0, 0, 1]
var left = 0
var right = Input2.count - 1
while left < right {
    if Input2[left] == 1{
        Input2.swapAt(left, right)
        right -= 1
    } else {
        left += 1
    }
}
print(Input2)
//✅ O(n)

//MARK: Reverse Array
var arr = [2,3,4,5,6,7]
var startIndex = 0
var endIndex = arr.count - 1

while startIndex < endIndex {
    //1st
    var temp = arr[startIndex]
    arr[startIndex] = arr[endIndex]
    arr[endIndex] = temp
    
    /* 2nd
     arr[startIndex] = arr[startIndex] + arr[endIndex]
     arr[endIndex] = arr[startIndex] - arr[endIndex]
     arr[startIndex] = arr[startIndex] - arr[endIndex]
     */
    
    //3rd  arr.swapAt(startIndex, endIndex)
    
    startIndex += 1
    endIndex -= 1
}
print(arr)
//✅ Time Complexity = O(n)
//✅ Space Complexity = O(1)

//MARK: Reverse String ⭐⭐⭐
//MARK: Palindrome String ⭐⭐⭐⭐

var str = "madam"
var strArray = Array(str)
var startIndex1 = 0
var endIndex1 = strArray.count - 1

while startIndex1 < endIndex1{
    strArray.swapAt(startIndex1, endIndex1)
    startIndex1 += 1
    endIndex1 -= 1
}

print(strArray)
let temp = str
str = ""
for i in strArray{
    str.append(i)
}
print(str)

let reversed = String(strArray)
print(reversed)

//check Palindrome
if temp == str{
    print("\(temp) it's a palindrome string")
} else {
    print("\(temp) it's not a palindrome string")
}


//Better Interview Solution (Two Pointers)
let str1 = "abmamaadamamba"
let charArr = Array(str1)

left = 0
right = charArr.count - 1
var isPalindrome = true

while left < right {
    if charArr[left] != charArr[right] {
        isPalindrome = false
        break
    }
    left += 1
    right -= 1
}
print(isPalindrome)

//MARK: Next Greater Element ⭐⭐⭐⭐⭐
var arr1 = [10, 4, 2, 20, 40, 12, 30]//[2, 5, 1, 7]//[2, 2, 2]//[5]//[4, 3, 2, 1]//[1, 2, 3, 4]//[13, 7, 6, 12]//[4, 5, 2, 25]//[2,1,3]
//Ip: 2 1 3 , op: 3 3 -1

var result = Array(repeating: -1, count: arr1.count)

for i in 0..<arr1.count{
    for j in (i + 1)..<arr1.count{
        if arr1[j] > arr1[i]{
            result[i] = arr1[j]
            break
        }
    }
}
print(result)

var result1 = Array(repeating: -1, count: arr1.count)
var stack = [Int]()

for i in stride(from: arr1.count - 1, through: 0, by: -1){
    
    while let last = stack.last, last <= arr1[i] {
        stack.removeLast()
    }
    
    if let last = stack.last {
        result1[i] = last
    }
            
    stack.append(arr1[i])
}
print(result1)
