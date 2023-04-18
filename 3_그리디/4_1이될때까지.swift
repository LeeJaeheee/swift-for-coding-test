//
//  4_1이될때까지.swift
//  algorithm
//
//  Created by 이재희 on 2023/04/14.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var n = input[0]
let k = input[1]

var count = 0

while n / k >= 1 {
    if n % k != 0 {
        count += n % k
        n -= n % k
    }
    n /= k
    count += 1
}
count += n - 1

print(count)
