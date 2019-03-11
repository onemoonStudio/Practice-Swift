//
//  boostCamp.swift
//  Algorithm
//
//  Created by Hyeontae on 06/01/2019.
//  Copyright © 2019 onemoon. All rights reserved.
//

// 아름다운연도
import Foundation

let p: Int = 2015

// return Int

var answer = 0


for beautiful in (p+1)..<10000 {
    
    var target = beautiful
    var numArr: [Int] = []
    var resultFlag: Bool = false
    
    
    while true {
        let tempNum = target%10
        var flag = true
        
        for i in numArr {
            if i == tempNum {
                flag = false
            }
        }
        
        if !flag {
            break
        } else {
            numArr.append(tempNum)
            target /= 10
        }
        
        if target == 0 {
            answer = beautiful
            resultFlag = true
            break
        }
    }
    
    if resultFlag {
        print(answer)
        break
    }
    
}

// 암호화 문제

let tempTuple: (Int,Int) = (10,20)
let temp: NSString = "abc"

for i in 0..<temp.length {
    print(temp.character(at: i))
}

// 26개의 배열에다가 아스키코드 값을 집어넣어서 없다면 넣고 있다면 아스키값을 비교한 뒤 넣는다.

