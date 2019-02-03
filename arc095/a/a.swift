#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let a = Int(input[0])!
let b = Int(input[1])!
let x = Int(input[2])!

if a <= x && x <= (a + b) {
    print("YES")
} else {
    print("NO")
}
