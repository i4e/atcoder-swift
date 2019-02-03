#!/usr/bin/swift

import Foundation

let n = Int(readLine()!)!
let A = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let answerN = A.max()!
let idealR = answerN / 2

var minimumDiff = answerN
var answerR = 0

for a in A {
    let diff = abs(idealR - a)
    if diff < minimumDiff && a != answerN{
        minimumDiff = diff
        answerR = a
    }
}

print(answerN, answerR)
