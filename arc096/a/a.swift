#!/usr/bin/swift

let S = Array(readLine()!)

var cnt = 0

for s in S {
    if s == "o" {
        cnt += 1
    }
}

print(700 + 100 * cnt)
