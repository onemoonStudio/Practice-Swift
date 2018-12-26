//
//  main.swift
//  Algorithm
//
//  Created by Hyeontae on 26/12/2018.
//  Copyright © 2018 onemoon. All rights reserved.
//

import Foundation

let array: [Int] = [1, 5, 2, 6, 3, 7, 4]
let commands: [[Int]] = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
// return [5, 6, 3]

let size: Int = commands.count

for i in 0..<size {
    let tempCommand = commands[i]
    var tempArray: [Int] = array[(tempCommand[0]-1)...(tempCommand[1]-1)].sorted()
    print(tempArray[tempCommand[2]-1])
    
}

