import Foundation

let n = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ")

let move = ["L":[0,-1], "R":[0,1], "U":[-1,0], "D":[1,0]]
var x = 1, y = 1

for ch in input {
  let nx = x + move[ch]![0]
  let ny = y + move[ch]![1]
  x = (nx >= 1 && nx <= n) ? nx : x
  y = (ny >= 1 && ny <= n) ? ny : y
}

print(x, y)
