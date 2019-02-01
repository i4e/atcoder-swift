#!/usr/bin/swift

let S = readLine()!
let c = Array(S)

if c[0] != c[1] && c[1] != c[2] && c[2] != c[0] {
    print("Yes")
} else {
    print("No")
}


