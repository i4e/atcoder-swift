#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let a = Int(input[0])!
let b = Int(input[1])!
let c = Int(input[2])!

let t = max(a, b, c) * 3 - (a + b + c) 

if t % 2 == 0 {
    print(t / 2)
} else {
    print((t+3) / 2)
}
