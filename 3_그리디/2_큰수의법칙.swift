//
//  2_큰수의법칙.swift
//  algorithm
//
//  Created by 이재희 on 2023/04/13.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
var input2 = readLine()!.split(separator: " ").map{ Int($0)! }

var n, m, k:Int
(n, m, k) = (input1[0], input1[1], input1[2])
//let (n, m, k) = (input1[0], input1[1], input1[2])??

input2.sort()
let num1 = input2[n - 1]
let num2 = input2[n - 2]

var result = (num1 * k + num2) * (m / (k + 1))
result += num1 * (m % (k + 1))

print(result)
