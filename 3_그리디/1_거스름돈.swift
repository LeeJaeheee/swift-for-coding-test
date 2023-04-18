//
//  main.swift
//  algorithm
//
//  Created by 이재희 on 2023/04/13.
//

import Foundation

var n = 1260
var count = 0

let coinTypes = [500, 100, 50, 10]

for coin in coinTypes {
    count += n / coin
    n %= coin
}

print(count)
