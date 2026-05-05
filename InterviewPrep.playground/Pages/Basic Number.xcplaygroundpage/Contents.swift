import UIKit


//MARK: Prime number
/*
//var arr = [12,45,4,2,3,54]
var arr = [9, 15, 21]
for i in arr {
    checkPrimeNum(num: i)
}
func checkPrimeNum(num: Int){
    var isPrime: Bool = true
    if num < 2 || num == 4{
        isPrime = false
    }else if num == 2 || num == 3{
        isPrime = true
    } else {
        for i in 2..<num / 2{
            if num % i == 0{
                isPrime = false
                break
            }
        }
    }
    print(isPrime ? "\(num) is a Prime number" : "\(num) is not a Prime number")
}
*/

//MARK: Palindrome number
/*
var numb = 12321
var temp = numb
var revNumb = 0
while temp > 0{
    let rem = temp % 10
    revNumb = 10 * revNumb + rem
    temp /= 10
}
if revNumb == numb{
    print("\(numb) its a palindrome number")
} else {
    print("\(numb) its not a palindrome number")
}
*/

//MARK: Armstrong number
var numb = 153
var temp = numb
var count = 0
var add = 0

while temp > 0{
    count += 1
    temp /= 10
}
temp = numb

for _ in 0..<count{
    let rem = temp % 10
    var mul = 1
    for i in 0..<count{
        mul = mul * rem
    }
    add = add + mul
    temp /= 10
}

print(add)
if add == numb {
    print("Armstrong")
} else {
    print("Not armstrong")
}






















//MARK: Prime number
/*
var length = 10
var a = 0
var b = 1
print(a, terminator: " ")
while length > 1{
    var c = a + b
    print(b, terminator: " ")
    a = b
    b = c
    length -= 1
}
print()
print("----")
length = 10
a = 0
b = 1
print(a, terminator: " ")

for _ in 0..<length - 1{
    var c = a + b
    print(b, terminator: " ")
    a = b
    b = c
}
*/

//MARK: palindrome number
/*
let numb = 123
var tempNumb = numb
var newNumb = 0

while tempNumb > 0{
    let rem = tempNumb % 10
    newNumb = newNumb * 10 + rem
    tempNumb /= 10
}

if newNumb == numb{
    print("\(numb) is a Palindrome Number")
} else {
    print("\(numb) is not a Palindrome Number")
}
*/

