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


//MARK: How to find unique number in array
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

//MARK: How to reverse array
print("--------------------- reverse array ")
var arr2 = [1, 2, 1, 4, 5, 6, 7]
var count = arr2.count - 1
print(arr2)
for i in 0..<arr2.count / 2 {
    var temp = arr2[i]
    arr2[i] = arr2[count]
    arr2[count] = temp
    count -= 1
}
print(arr2)

var rev = [Int]()
for i in stride(from: arr2.count - 1, through: 0, by: -1) {
    rev.append(arr2[i])
}
print("Reverse array", rev)


//MARK: Sort array
print("--------------------- sort array ---------------------")
var arr3 = [23,54,34,76,34,33,54,35]

for i in 0..<arr3.count {
    for j in i..<arr3.count {
        if arr3[i] > arr3[j] {
            var temp = arr3[i]
            arr3[i] = arr3[j]
            arr3[j] = temp
        }
    }
}
print(arr3)


//MARK: Find Maximum Element
print("--------------------- Find Maximum Element ---------------------")
let numb = [12, 45, 3, 78, 34]
var maxElement = numb[0]
for i in 0..<numb.count {
    if maxElement < numb[i] {
        maxElement = numb[i]
    }
}
print("Maximum element in array \(maxElement)")

//MARK: Find minimum element
print("--------------------- Find Minimum Element ---------------------")
var minElement = numb[0]
for i in 0..<numb.count {
    if minElement > numb[i] {
        minElement = numb[i]
    }
}
print("Minimum element in array \(minElement)")

//MARK: Search an Element (Linear Search)
print("--------------------- Search an Element (Linear Search) ---------------------")
let target = 78
var isFlag: Bool = false
for i in 0..<numb.count {
    if numb[i] == target{
        isFlag = true
        break
    }
}
print(isFlag)

//MARK: Count Even and Odd Numbers
print("--------------------- Count Even and Odd Numbers ---------------------")
var even = 0
var odd = 0
for i in numb{
    if i % 2 == 0{
        even += 1
    } else {
        odd += 1
    }
}
print("Even:", even)
print("Odd:", odd)

//MARK: Find Duplicate Elements
print("--------------------- Find Duplicate Elements ---------------------")
let numb1 = [1,2,2,3,1,2,4,1,6,4,5]
var set = Set<Int>()

for num in numb1{
    if set.contains(num){
        print(num, terminator: ", ")
    } else {
        set.insert(num)
    }
}
print()

//MARK: Remove Duplicates
print("--------------------- Remove Duplicates ---------------------")
var result = [Int]()
var set1 = Set<Int>()
for num in numb1 {
    
    if !set1.contains(num) {
        result.append(num)
        set1.insert(num)
    }
}
print(result)
