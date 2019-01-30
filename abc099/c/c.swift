#!/usr/bin/swift

import Foundation

let N = Int(readLine()!)!

var result = N

for i in 0...N {
    var cnt = 0
    var t = i
    
    while t > 0 {
        cnt += t % 6
        t /= 6
    }

    t = N - i
    
    while t > 0 {
        cnt += t % 9
        t /= 9
    }

    if result > cnt {
        result = cnt
    }
}

print(result)
