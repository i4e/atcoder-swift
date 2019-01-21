#!/usr/bin/swift

import Foundation

let input = readLine()!.components(separatedBy: " ")
let sx = Int(input[0])!
let sy = Int(input[1])!
let tx = Int(input[2])!
let ty = Int(input[3])!

let dx = tx - sx
let dy = ty - sy

print(String(repeating: "U", count: dy), terminator:"")
print(String(repeating: "R", count: dx), terminator:"")
print(String(repeating: "D", count: dy), terminator:"")
print(String(repeating: "L", count: dx), terminator:"")
print("L", terminator:"")
print(String(repeating: "U", count: dy+1), terminator:"")
print(String(repeating: "R", count: dx+1), terminator:"")
print("D", terminator:"")
print("R", terminator:"")
print(String(repeating: "D", count: dy+1), terminator:"")
print(String(repeating: "L", count: dx+1), terminator:"")
print("U", terminator:"")