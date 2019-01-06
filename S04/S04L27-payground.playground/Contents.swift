import UIKit

// # Arrays

var anArray = [35, 36, 5, 2]

print(anArray)

print(anArray[3])

anArray.append(99)
print(anArray)

anArray.remove(at: 1)
anArray.sort()
print(anArray)

// Challenge 3.87, 7.1, 8.9; remove 7.1, append the produce of the remainging elements.

var x = [3.87, 7.1, 8.9]
print("at start of challenge x: \(x)")

x.remove(at: 1)
x.append( x[0] * x[1] )
print("at end of challenge x: \(x)")

// mixed array
let mixedArray: Any = ["rjj", 2019, 01, 05, "S04L27"]
print( mixedArray )

// Alternative declaration syntax
var strArray = [String]()

strArray.append("newvalue")
print(strArray)


// Dictionary
var dic = ["computer": "something to play Call of Duty on",
           "coffee": "something some folks like",
           "abc": "first 3 lower case letters in the ASCII sequence of lower case chars"
]
print(dic)

print(dic["computer"]) // without ! get a warning here
print(dic["computer"]!) // can use ! to indicate we know this is not nil and avoid the warning

print(dic.count)

var gameCharacterString = [String: Double]() // map of string to double

gameCharacterString["lrp"] = 1000

print("gameCharacterString: \(gameCharacterString)")
print("lrp's strength: \(gameCharacterString["lrp"]!)")

// Challenge: memu dic
// pizza : 10.99, ice cream 4.99, salad: 7.99
// Choose two and print "Total Cost of my meal is: "

let p = "Pizza"
let ic = "Ice Cream"
let s = "Salad"
let menu = [p: 10.99,
            ic: 4.99,
            s: 7.99]

/*
 print("Your meal of \(p) and \(ic) costs \(menu[p]  + menu[ic] ) plus tax. Have a nice day!")
 error: S04L27-payground.playground:62:53: error: binary operator '+' cannot be applied to two 'Double?' operands
 print("Your meal of \(p) and \(ic) costs \(menu[p]  + menu[ic] ) plus tax. Have a nice day!")
 ~~~~~~~  ^ ~~~~~~~~
*/
print("Your meal of \(p) and \(ic) costs \(menu[p]! + menu[ic]!) plus tax. Have a nice day!")
