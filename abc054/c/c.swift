#!/usr/bin/swift

// 1: procedure DFS(現在の頂点 v)
// 2: if 全ての頂点を訪問済み then
// 3: 答えを 1 増やす。
// 4: return
// 5: end if
// 6: for 頂点 i: 頂点 v に隣接しているかつ未訪問 do
// 7: 頂点 i を訪問済みとする。
// 8: DFS(i)
// 9: 頂点 i を未訪問とする。
// 10: end for
// 11: return
// 12: end procedure

import Foundation

let input = readLine()!.components(separatedBy: " ")
var N = Int(input[0])!
var M = Int(input[1])!

var g: [[Bool]] = (0..<N).map {
     _ in (0..<N).map {
         _ in false
    }
}

func dfs(v: Int, N: Int, visited: inout [Bool]) -> Int {

    var allVisited = true

    for i in 0..<N {
        if visited[i] == false {
            allVisited = false
            break
        }
    }

    if allVisited {
        return 1
    }

    var cnt = 0

    for  i in 0..<N {
        if g[v][i] == false {
            continue
        }

        if visited[i] {
            continue
        }

        visited[i] = true
        cnt += dfs(v: i, N: N, visited: &visited)
        visited[i] = false
    }

    return cnt
}

for _ in 0..<M {
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    g[a-1][b-1] = true
    g[b-1][a-1] = true
}

var visited = (0..<N).map { _ in false}

visited[0] = true
print(dfs(v: 0, N: N, visited: &visited) )
