//
//  3_숫자카드게임.swift
//  algorithm
//
//  Created by 이재희 on 2023/04/14.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var result = readLine()!.split(separator: " ").map{ Int($0)! }.min()!
//result = 0??

for _ in (1..<input[0]) {
    let newMin = readLine()!.split(separator: " ").map{ Int($0)! }.min()!
    result = max(result, newMin)
}

print(result)
