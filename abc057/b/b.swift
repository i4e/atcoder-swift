#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let N = Int(input[0])!
let M = Int(input[1])!

var a = [Int]()
var b = [Int]()
var c = [Int]()
var d = [Int]()

for _ in 0..<N {
    let input = readLine()!.components(separatedBy: " ")
    a.append(Int(input[0])!)
    b.append(Int(input[1])!)
}

for _ in 0..<M {
    let input = readLine()!.components(separatedBy: " ")
    c.append(Int(input[0])!)
    d.append(Int(input[1])!)
}

for i in 0..<N {
    var min = 4 * Int(pow(10.0, 8))
    var point = -1
    for j in 0..<M {
        let diff = abs(a[i] - c[j]) + abs(b[i] - d[j])
        if diff < min {
            min = diff
            point = j + 1
        }
    }
    print(point)
}
