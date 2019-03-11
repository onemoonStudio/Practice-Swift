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

// 모의고사

let stu1: [Int] = [1,2,3,4,5]
let stu2: [Int] = [2,1,2,3,2,4,2,5]
let stu3: [Int] = [3,3,1,1,2,2,4,4,5,5]

// 5 8 10

let answer: [Int] = [1,3,2,4,2]
var rightAnswer: [Int] = [0,0,0]

for i in 0..<answer.count {
    
    if answer[i] == stu1[i%5] {
        rightAnswer[0] += 1
    }
    if answer[i] == stu2[i%8] {
        rightAnswer[1] += 1
    }
    if answer[i] == stu3[i%10] {
        rightAnswer[2] += 1
    }
}

//let result = rightAnswer.filter({ (value: Int) -> Bool in return (value == rightAnswer.max())})
//print(result)

var result: [Int] = []
for s in 0..<rightAnswer.count {
    if rightAnswer.max() == rightAnswer[s] {
        result.append(s+1)
    }
}

print(result)

// 가운데 수
// https://programmers.co.kr/learn/courses/30/lessons/12903
// String.Index 를 통한 문자열을 자르는 것이 핵심

var str = "qwer"

func solution(_ s:String) -> String {
    var indexTuple: (start: Int, end: Int)
    let half = s.count/2
    if s.count%2 == 0 {
        indexTuple = (half - 1 , half)
    } else {
        indexTuple = (half , half)
    }
    return String(s[String.Index(encodedOffset: indexTuple.start)...String.Index(encodedOffset: indexTuple.end)])
}

print(solution(str))

// 나누어 떨어지는 숫자 배열
// https://programmers.co.kr/learn/courses/30/lessons/12910?language=swift
// fiter 가 핵심

let arr = [2, 36, 1, 3]
let divisor = 1

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = arr.filter({ $0 % divisor == 0 })
    return result.isEmpty ? [-1] : result.sorted()
}

print(solution(arr, divisor))

// 두 정수 사이의 합
// https://programmers.co.kr/learn/courses/30/lessons/12912?language=swift
// reduce 가 핵심

func solution(_ a:Int, _ b:Int) -> Int64 {
    //    let arr: [Int] = Array(a...b)
    let arr = [Int]( a > b ? b...a : a...b)
    let result = arr.reduce(0) { (base , target ) in
        base + target
    }
    return Int64(result)
}

print(solution(5, 3))

// 문자열 내 마음대로 정렬하기
// https://programmers.co.kr/learn/courses/30/lessons/12915?language=swift
// sort를 직접 만들어 주는 것이 핵심
// 더 큰수가 뒤로 간다.

func solution(_ strings:[String], _ n:Int) -> [String] {
    var result = strings
    result.sort { (a, b) -> Bool in
        let targetA = a[String.Index(encodedOffset: n)]
        let targetB = b[String.Index(encodedOffset: n)]
        if targetA == targetB {
            return a < b
        }
        return targetA < targetB
    }
    return result
}

print(solution(["abce", "abcd", "cdx"], 2))

// 문자열 내 p와 y의 개수
// https://programmers.co.kr/learn/courses/30/lessons/12916?language=swift
// Ascii 값을 통해서 구할 수도 있다. 어려운 예제는 이를 활용해서 풀어보자
// https://stackoverflow.com/questions/29835242/whats-the-simplest-way-to-convert-from-a-single-character-string-to-an-ascii-va/29835324
// https://stackoverflow.com/questions/24354549/swift-how-to-get-string-from-ascii-code
// components의 갯수를 비교하는 것도 좋은 방법이다.

func solution(_ s:String) -> Bool
{
    var count = 0
    for ch in s {
        if ch == "y" || ch == "Y" {
            count += 1
        } else if ch == "p" || ch == "P" {
            count -= 1
        }
    }
    return count == 0 ? true : false
}

print(solution("Pyy"))

// 문자열 내림차순으로 배치하기
// https://programmers.co.kr/learn/courses/30/lessons/12917?language=swift
// 기본 정렬 문제

func solution(_ s:String) -> String {
    return String(s.sorted(by: { $0 > $1 }))
}

print(solution("Zbcdefg"))


//public struct Queue<T> {
//    public private(set) var elements: Array<T> = []
//    public mutating func push(value: T) { elements.append(value) }
//    public mutating func pop() -> T { return elements.removeFirst() }
//    public var head: T? { return elements.first }
//    public var isEmpty: Bool { return elements.isEmpty }
//}
//
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var processQ = Queue<Int>(elements: progresses)
//    var speedQ = Queue<Int>(elements: speeds)
//    var count: Int = 0
//    var result: [Int] = []
//    var headProcess: Int = processQ.pop()
//    var headSpeed: Int = speedQ.pop()
//
//    while !processQ.isEmpty {
//        if headProcess + headSpeed*count >= 100 {
//            result.append(1)
//
//        } else {
//
//        }
//
//        count += 1
//    }
//
//
//    return []
//}
//
////[93,30,55]    [1,30,5]    [2,1]
