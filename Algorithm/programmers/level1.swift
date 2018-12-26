//
//  p001.swift
//  Algorithm
//
//  Created by Hyeontae on 26/12/2018.
//  Copyright © 2018 onemoon. All rights reserved.
//

// K번째 수
let array: [Int] = [1, 5, 2, 6, 3, 7, 4]
let commands: [[Int]] = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
let size: Int = commands.count

for i in 0..<size {
    let tempCommand = commands[i]
    var tempArray: [Int] = array[(tempCommand[0]-1)...(tempCommand[1]-1)].sorted()
    // sorted는 정렬된 배열을 반환
    // subArray => [start...end]
    print(tempArray[tempCommand[2]-1])
    // return [5 6 3]
}

