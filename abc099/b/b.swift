#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let a = Int(input[0])!
let b = Int(input[1])!


var poles = [0]

for i in 1...999 {
  poles.append(poles[i-1] + i)
} 

for i in 1...999 {
    let diffA = poles[i-1] - a
    let diffB = poles[i] - b
    if diffA == diffB {
        print(diffA)
        break
    }
}
