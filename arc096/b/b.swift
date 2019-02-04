#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let N = Int(input[0])!
let X = Int(input[1])!
let M = (0..<N).map{ _ in Int(readLine()!)! }

let sum = M.reduce(0) { $0 + $1 }
let rest = X - sum
let answer = N + rest / M.min()!

print(answer)
