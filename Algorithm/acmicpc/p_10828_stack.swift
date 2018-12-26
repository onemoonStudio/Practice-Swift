// Stack
// struct 에서는 프로퍼티를 수정할 때 mutating 이라는 키워드가 꼭 필요하다

// v1 : 12.19 , 옵셔널에 대해서 좀 더 살펴보기

struct Stack {
    var array: [Int] = []
    
    public var size: Int {
        return array.count
    }
    
    // MARK: v1
    public var top: Int {
        if size == 0 {
            return -1
        } else {
            var result: Int = 0
            if let lastValue = array.last {
                result = lastValue
            }
            return result
        }
    }
    
    public var empty: Int {
        return size == 0 ? 1 : 0
    }
    
    mutating func push(_ input: Int) {
        array.append(input)
    }
    
    mutating func pop() -> Int {
        if let last = array.popLast() {
            return last
        } else {
            return -1
        }
    }
    
}


var myStack: Stack = Stack()

let howMuchStr: String = readLine()!
let howMuch: Int = Int(howMuchStr)!
for i in 0..<howMuch {
    if let inputStr: String = readLine() {
        
        let inputArr = inputStr.split(separator: " ")
        if inputArr.count == 2 {
            myStack.push(Int(inputArr[1])!)
        } else {
            switch inputArr[0] {
            case "pop":
                print(myStack.pop())
            case "size":
                print(myStack.size)
            case "empty":
                print(myStack.empty)
            case "top":
                print(myStack.top)
            default:
                print("nop")
            }
            
        }
        
    }
}
