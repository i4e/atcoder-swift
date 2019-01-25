#!/usr/bin/swift

let N = Int(readLine()!)!

func number(of digits: Int) -> Int{
    var number = 0
    var digits = digits
    while digits > 0 {
        digits /= 10
        number += 1
    }

    return number
}

var min = number(of: N)
var A = 0

while A * A <= N {
    A = A + 1
    
    if N%A != 0 {
        continue
    }
    
    let B = N / A
    let f = max(number(of: A), number(of: B))
    if f < min {
        min = f
    }
}

print(min)
