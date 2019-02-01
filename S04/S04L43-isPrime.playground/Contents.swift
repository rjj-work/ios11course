import UIKit

func isPrime(n: Int) -> Bool {
    if n == 1 || n == 2 || n == 3 {
        return true
    }
    if n < 1 || n % 2 == 0 {
        return false
    }

    let s = Int(sqrt(Double(n)))

    var i = 3
    while i <= s {
        if n % i == 0 {
            return false
        }
        i = i+2
    }

    return true
}

for x in (1...99) {

print("isPrime(\(x)): \(isPrime(n:x))")
}

let x = 643
print("isPrime(\(x)): \(isPrime(n:x))")

