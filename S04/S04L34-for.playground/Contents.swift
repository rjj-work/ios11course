//import UIKit

let a = [8, 4, 8, 1]

for n in a {
    print(n)
}

print("Challenge: create an array with 4 names and print 'Hi there --- !'")

let names = ["bob", "sally", "callie", "merida"]
for s in names {
    print("Hi there \(s)!")
}

print("------- enumerated() example")
var n1 = [7, 2, 9, 4, 1]
for (idx, val) in n1.enumerated() { // compiler complains that `val` was not referenced
    n1[idx] += 1
    // val += 1
}
print(n1)

print("Challenge: create array of 8, 7, 19, 28.  halve the values")
// Issue is that odd intergers don't divide by 2 nicely
var a2 = [Double]()
a2 = [8,7, 19,28]
print("starting a2:\(a2)")
for (i,v) in a2.enumerated() {
    a2[i] = v/2
}
print("ending a2: \(a2)")
