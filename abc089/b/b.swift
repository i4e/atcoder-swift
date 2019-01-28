#!/usr/bin/swift

import Foundation

let N = Int(readLine()!)!

let S = readLine()!.components(separatedBy: " ")

if S.contains("Y") {
    print("Four")
} else {
    print("Three")
}
