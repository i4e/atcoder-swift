#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let n = Int(input[0])!
let m = Int(input[1])!
let x = Int(input[2])!

let A = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let costToZero = A.filter{ $0 < x }.count
let costToN = A.filter{ $0 > x }.count

print(min(costToZero, costToN))
