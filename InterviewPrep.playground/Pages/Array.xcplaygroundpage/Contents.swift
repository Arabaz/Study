//: [Previous](@previous)

import Foundation


var arr = [1,0,1,0,5,3,0,4,0,5]
//op [1,1,5,3,4,5,0,0,0,0]
var res: [Int] = []
for num in arr{
    if num != 0{
        res.append(num)
    }
}
var zeroCount = arr.count - res.count
res.append(contentsOf: Array(repeating: 0, count: zeroCount))
print(res)


var index = 0

for i in 0..<arr.count {
    if arr[i] != 0{
        arr[index] = arr[i]
        index += 1
    }
}

while index < arr.count {
    arr[index] = 0
    index += 1
}
print(arr)


//How to find unique number in array
let arr1 = [1, 1, 2, 2, 3, 4, 4, 5, 5, 4, 3, 9, 3, 6, 7,0]
var frequency: [Int:Int] = [:]

for i in arr1{
    frequency[i, default: 0] += 1
}

print(frequency)

for i in frequency{
    if i.value == 1{
        print("Unique:\(i.key)")
    }
}

let uniqueNumbers = frequency.filter { $0.value == 1 }.map { $0.key }.sorted()
print("uniqueNumbers:\(uniqueNumbers)")

//How to reverse array
print("---------------------")
var arr2 = [1, 2, 3, 4, 5, 6, 7]
var count = arr2.count - 1
print(arr2)
for i in 0..<arr2.count / 2 {
    var temp = arr2[i]
    arr2[i] = arr2[count]
    arr2[count] = temp
    count -= 1
}
print(arr2)
