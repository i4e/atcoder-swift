#!/usr/bin/swift

let N = readLine()!
let reversedN = String(N.reversed())

if N == reversedN {
    print("Yes")
} else {
    print("No")
}
