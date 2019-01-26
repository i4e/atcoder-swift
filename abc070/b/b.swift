#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let A = Int(input[0])!
let B = Int(input[1])!
let C = Int(input[2])!
let D = Int(input[3])!

let start = max(A, C)
let end = min(B, D)

let time = max(0, end - start)

print(time)
