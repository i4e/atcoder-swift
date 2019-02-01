#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let A = Int(input[0])!
let B = Int(input[1])!
let K = Int(input[2])!

if B-A+1 <= 2 * K {
    for i in A...B {
        print(i)
    }
} else {
    for i in A...(A+K-1) {
        print(i)
    }

    for i in (B-K+1)...B {
        print(i)
    }
}

