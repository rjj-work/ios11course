import UIKit

var i = 1

while i < 10 {
    print(i)
    i += 1
}

// Challenge - use while loop to display first 20 numbers in the 7 times table
print("Challenge - use while loop to display first 20 numbers in the 7 times table")
var tt = 1
while tt <= 20 {
    print(7*tt)
    tt += 1
}

print("Challenge use while loop to add one to each value in array of random number ints - using let")
let a1 = [7, 23, 98, 1, 0, 763]

i = 0
while i < a1.count {
    print(a1[i] + 1)
    i += 1
}

print("Challenge use while loop to add one to each value in array of random number ints - using var so array can be modified")
var a2 = [7, 23, 98, 1, 0, 763]

i = 0
while i < a2.count {
    a2[i] += 1
    i += 1
}

print(a2)
