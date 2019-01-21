#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let K = Int(input.first!)!
let S = Int(input.last!)!

var cnt = 0

for x in 0...K {
    for y in 0...K {
        let z = S - x - y
        if z >= 0 && z <= K {
            cnt += 1
        }
    }
}

print(cnt)
