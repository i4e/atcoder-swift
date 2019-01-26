#!/usr/bin/swift

import Foundation

let N = Int(readLine()!)! 
let T = (0..<N).map { _ in Int(readLine()!)! }

func gcd(_ xIn: Int, _ yIn: Int) -> Int {
    let x: Int
    let y: Int

    if xIn >= yIn {
        x = xIn
        y = yIn
    } else {
        x = yIn
        y = xIn
    }

    if y == 0 {
        return x
    }

    return gcd(y, x % y)
}

func lcm(_ x: Int, _ y: Int) -> Int {
    let g = gcd(x, y)
    return x / g * y
}

var answer = 1

for t in T {
    answer = lcm(answer, t)
}

print(answer)
