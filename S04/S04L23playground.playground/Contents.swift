import UIKit

var str = "Hello, playground"
str = "A new value"

let otherStr = "ABC"    // const

print("rjj")

// Variable Types

// # String
let name = "rjj"    // is a constant

// how to concatenate
print( name + " is that you're real name ?")

// # Integer
let anIntValue = 8

print( 2*anIntValue )

print( 100 + anIntValue)

// Rounds down
print( anIntValue / 5)

// print inside of a string
print( "anIntValue: \(anIntValue)")

var aStrWithNum = "this is a string with an embedded value \(anIntValue)"
print(aStrWithNum)

// Double
var aDouble = 3.14
var secondDouble: Double =  aDouble

print("aDouble: \(aDouble), secondDouble: \(secondDouble), sum:\(aDouble + secondDouble)")

// have to convert to add
print( Double(anIntValue) + aDouble + secondDouble)

var aBool = false // or true
print(aBool)
print(String(aBool))

// # Exercise challenge:
// create variables: double - 5.76, int - 8
// print result as string "The product of 5.76 and 8 is <blah>"
let d1: Double = 5.76
let i1: Int = 8
let product:Double = d1 * Double(i1)

print("The product of \(d1) and \(i1) is \(product)")
