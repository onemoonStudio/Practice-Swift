////
////  linePlus.swift
////  Algorithm
////
////  Created by Hyeontae on 11/03/2019.
////  Copyright © 2019 onemoon. All rights reserved.
////
//
//
//
//let test = "interview"
//
//func so(_ t:String) -> String {
//    return String(t.sorted { $0 > $1 })
//}
//
////print(so(test))
//
//let input = "1234 1234".split(separator: " ", maxSplits: 100, omittingEmptySubsequences: true)
//
//let myans = Array(input[0])
//let ans = Array(input[1])
//var strike: Int = 0
//var ball: Int = 0
//
//for (idx,ch) in myans.enumerated() {
//    if ans[idx] == ch {
//        strike += 1
//    } else if ans.contains(ch) {
//        ball += 1
//    }
//}
//
//var result: String = ""
//if strike == 0 && ball == 0 {
//    result = "out"
//} else {
//    if strike != 0 {
//        result.append("\(strike)S")
//    }
//    if ball != 0 {
//        result.append("\(ball)B")
//    }
//}
//
////print(result)
//
//
//public struct Stack<T> {
//    public var elements: Array<T> = []
//    public mutating func push(value: T) { elements.append(value) }
//    public mutating func pop() -> T { return elements.popLast()! }
//    public var isEmpty: Bool { return elements.isEmpty }
//}
//
//let input = "10000 0 + 10000 *".split(separator: " ", maxSplits: 100, omittingEmptySubsequences: true)
//var myStack = Stack<Int>(elements: [])
//for item in input {
//    if item == "+" {
//        let a = myStack.isEmpty ? 0 : myStack.pop()
//        let b = myStack.isEmpty ? 0 : myStack.pop()
//        myStack.push(value: a + b)
//    } else if item == "*" {
//        let a = myStack.isEmpty ? 0 : myStack.pop()
//        let b = myStack.isEmpty ? 0 : myStack.pop()
//        myStack.push(value: a * b)
//    } else {
//        if let itemToInt = Int(item) {
//            myStack.push(value: itemToInt)
//        }
//    }
//}
//
//print(myStack.pop())
//
//
//
//public struct myDS {
//    public var elements: Array<Int> = []
//    public mutating func checkOperation(_ str: String...) -> Bool{
//        switch str[0] {
//        case "add":
//            guard let item = Int(str[1]) as? Int else { break }
//            elements.append(item)
//        case "min":
//            guard let _min = elements.min() else {
//                print("-1")
//                break
//            }
//            print(_min)
//        case "remove":
//            if elements.isEmpty {
//                print("-1")
//            } else {
//                print(elements.removeFirst())
//            }
//        case "exit":
//            return true
//        default:
//            return false
//        }
//        return false
//    }
//}
//
//extension String: Collection {}
//
//var dataStructure = myDS(elements: [])
//
//exit: while true {
//    guard let input = readLine() else { break }
//    let token = input.split(separator: " ", maxSplits: 100, omittingEmptySubsequences: true)
//    if token.count < 2 {
//        if dataStructure.checkOperation(String(token[0])) {
//            break
//        }
//    } else if token.count == 2 {
//        dataStructure.checkOperation(String(token[0]), String(token[1]))
//    }
//}
//
//
//
//
//
//
//
