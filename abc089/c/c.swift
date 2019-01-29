#!/usr/bin/swift

import Foundation

let N = Int(readLine()!)!

var countM = 0
var countA = 0
var countR = 0
var countC = 0
var countH = 0

for _ in 0..<N {
    let initialCharacter = String(readLine()!.prefix(1))

    switch initialCharacter {
        case "M":
            countM += 1
        case "A":
            countA += 1
        case "R":
            countR += 1
        case "C":
            countC += 1
        case "H":
            countH += 1
        default:
            break
    }
}

// reference: https://github.com/all-user/SwiftCombination
func _combination<T>(_ arr:[T], length:Int, process:([T]) -> ()) -> [T] {
    var indices = (0..<length).map{ $0 }
    var k = length-1
    let arrCnt = arr.count

    main_loop: while true {
        repeat {
            process(indices.map{ arr[$0] })
            indices[k]+=1
        } while indices[k] != arrCnt

        if length == 1 { break main_loop }

        while true {
            if indices[k-1] != arrCnt - (length-(k-1)) {
                indices[k-1]+=1
                let t = indices[k-1]

                var i=k, j=1
                while i != length {
                    indices[i] = t + j
                    i+=1
                    j+=1
                }

                k = length-1
                break
            } else {
                k-=1
                if k == 0 { break main_loop }
            }
        }
    }

    return arr
}

func combination<T>(_ arr:[T], length:Int) -> [[T]] {
    if length > arr.count || length < 0 { return [] }
    if arr.isEmpty { return [] }
    if length == 0 { return [[]] }

    var ret = [[T]]()
    _ = _combination(arr, length: length){ ret.append($0) }

    return ret
}

let counts = [countM, countA, countR, countC, countH]
var result = 0

for c in combination(counts, length:3) {
    result += c.reduce(1) { $0 * $1 }
}

print(result)
