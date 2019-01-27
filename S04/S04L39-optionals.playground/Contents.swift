var number: Int?

print(number)

let userEnteredText = "3"

let userTextConvertedToInteger = Int(userEnteredText)

print(userTextConvertedToInteger!)

if userTextConvertedToInteger != nil {
    print("userTextConvertedToInteger not nil: \(userTextConvertedToInteger ?? 42)")
    print("userTextConvertedToInteger! not nil: \(userTextConvertedToInteger!)")
}
