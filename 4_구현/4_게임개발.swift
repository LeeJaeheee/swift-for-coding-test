import Foundation

let mapSize = readLine()!.split(separator: " ").map{ Int($0)! }
let n = mapSize[0], m = mapSize[1]

let location = readLine()!.split(separator: " ").map{ Int($0)! }
var x = location[0], y = location[1], direction = location[2]

var map: [[Int]] = []
for _ in 1...n {
  map.append(readLine()!.split(separator: " ").map { Int($0)! })
}
map[x][y] = 2

let move = [(-1, 0), (0, 1), (1, 0), (0, -1)]
var count = 0

while true {
  let newDirection = (direction == 0) ? 3 : direction - 1
  let newX = x + move[newDirection].0
  let newY = y + move[newDirection].1

  if map[newX][newY] == 0 {
    //왼쪽회전
    direction = newDirection
    //이동하기
    x = newX
    y = newY
    //방문기록
    map[x][y] = 2
  }
  //뒤로가기
  //끝내기
}

print(count)
