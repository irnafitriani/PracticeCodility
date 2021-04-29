

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var array = A
    var rotate = K

    if A.count == 0 {
        return []
    }

    if A.count == 1 {
        return array
    }

    if K > A.count {
        rotate = K % A.count
    }

    for i in 0...A.count-1 {
        let swap = i + rotate
        if swap > A.count-1 {
            array[swap - A.count] = A[i]
        } else {
            array[swap] = A[i]
        }
    }
    return array
}
