public struct myDS {
    public var elements: Array<Int> = []
    public mutating func checkOperation(_ str: String...) -> Bool{
        switch str[0] {
        case "add":
            if let item = Int(str[1]) {
                elements.append(item)
            }
        case "min":
            if let _min = elements.min() {
                print(_min)
            }
        case "remove":
            if elements.isEmpty {
                print("-1")
            } else {
                print(elements.removeFirst())
            }
        case "exit":
            return true
        default:
            return false
        }
        return false
    }
}

var dataStructure = myDS(elements: [])

exit: while true {
    guard let input = readLine() else { break }
    let token = input.split(separator: " ", maxSplits: 100, omittingEmptySubsequences: true)
    
    if token.count < 2 {
        if dataStructure.checkOperation(String(token[0])) {
            break
        }
    } else if token.count == 2 {
        dataStructure.checkOperation(String(token[0]), String(token[1]))
    }
    
}

