#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
var A = Int(input[0])!
var B = Int(input[1])!

if A == 1 { A += 13 }
if B == 1 { B += 13 }

func poker(A: Int, B: Int) -> String {
    if A == B {
        return "Draw"
    } else if A > B {
        return "Alice"
    } else {
        return "Bob"
    }
}

print(poker(A: A, B: B))
