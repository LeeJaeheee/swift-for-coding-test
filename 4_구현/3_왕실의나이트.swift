import Foundation

let input = Array(readLine()!)
var count = 0

let row = Int(String(input[1]))!
let column = Int(input[0].asciiValue!) - Int(Character("a").asciiValue!) + 1

let move = [[2,-1], [2,1], [-2,-1], [-2,1], [-1,-2], [-1,2], [1,-2], [1,2]]

for m in move {
  let nRow = row + m[0]
  let nColumn = column + m[1]
  if 1...8 ~= nRow && 1...8 ~= nColumn {
    count += 1
  }
}

print(count)