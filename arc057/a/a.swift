#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let A = Int(input[0])!
let K = Int(input[1])!

var t = A
var i = 0

let th = 2 * Int(pow(10.0, 12.0))

if K == 0 {
    i = th - A
} else {
    while t < th {
        t += 1 + K * t
        i += 1
    }
}

print(i)
