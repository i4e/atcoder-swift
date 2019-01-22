#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let N = Int(input[0])!
let M = Int(input[1])!

let A: [[String]] = (0..<N).map {
     _ in readLine()!.map { String($0) }
}
let B: [[String]] = (0..<M).map {
     _ in readLine()!.map { String($0) }
}

var isContained = false

for i in 0..<(N-M+1) {
    for j in 0..<(N-M+1) {
        var same = true
        for y in 0..<M {
            for x in 0..<M {
                if A[j+y][i+x] != B[y][x] {
                    same = false
                }
            }
        }

        if same == true {
            isContained = true
            break
        }
    }
}

if isContained {
    print("Yes")
} else {
    print("No")
}
