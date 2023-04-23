import Foundation

let n = Int(readLine()!)!
var count = 0

for i in 0...n {
  for j in 0..<60 {
    for k in 0..<60 {
      let time = String(i) + String(j) + String(k)
      if time.contains("3") {
        count += 1
      }
    }
  }
}

print(count)