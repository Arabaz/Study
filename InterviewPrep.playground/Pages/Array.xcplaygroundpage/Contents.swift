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
