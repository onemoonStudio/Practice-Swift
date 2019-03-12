//
//  naver.swift
//  Algorithm
//
//  Created by Hyeontae on 11/03/2019.
//  Copyright © 2019 onemoon. All rights reserved.
//

import Foundation

func ord (_ s : String) -> Int {
    return Int(s.utf16[s.utf16.startIndex]);
}

func ord (_ c : Character) -> Int {
    return ord(String(c));
}

public func solution(_ S: inout String) -> String {
    let S_characters = Array(S.characters);
    var occurrences = [Int](repeating: 0, count: 26);
    
    for i in 0...(S_characters.count - 1) {
        occurrences[ord(S_characters[i]) - ord("a")] += 1;
    }
    
    var best_char: Character = "a";
    var best_res: Int = 0;
    
    for i in 0...25 {
        if (occurrences[i] > best_res) {
            best_char = Character(UnicodeScalar(ord("a") + i)!);
            best_res = occurrences[i];
        }
    }
    
    return String(best_char);
}

var temp = "amhidncddaaa"
print(solution(&temp))


//  @@@@@@@@@@

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    let sentenses = S.components(separatedBy: [".","!","?"])
    let result = sentenses.map { (item) -> Int in
        item.components(separatedBy: " ").filter({ $0.count > 0 }).count
    }
    
    return result.max() ?? 0
}

var test = "a"
print(solution(&test))

//  @@@@@@@@@@ _ 1

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var number: Int = {
        var temp = 0
        for i in 0..<S.count {
            if S.popLast() == "1" {
                temp += Int(truncating: pow(2.0, i) as NSDecimalNumber)
            }
        }
        return temp
    }()
    
    let count: Int = {
        var tempCount = 0
        while number != 0 {
            tempCount += 1
            if number % 2 == 0 {
                number /= 2
            } else {
                number -= 1
            }
        }
        return tempCount
    }()
    
    return count
}

