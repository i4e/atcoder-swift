#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let A = Int(input[0])!
let B = Int(input[1])!

print((A + B) % 24)
