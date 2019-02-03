#!/usr/bin/swift

import Foundation

let n = Int(readLine()!)!
let X = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let sortedX = X.sorted()

let lowerMedian = sortedX[n / 2 - 1]
let upperMedian = sortedX[n / 2]

for x in X {
    if x <= lowerMedian {
        print(upperMedian)
    } else {
        print(lowerMedian)
    }
}
