//
//  Operations.swift
//  mess
//
//  Created by Amir Abaris on 9/17/25.
//

// my source is the swift docs itself
// first this first, the OLD OLD BASIC var vs let

// OMG, the types are just like TS : ). ty swift
let number: Int = 12
var string: String = "hi"
// let -> constant
// var -> mutable bidng


// use let by default

// rnage operators

func rangeOP() -> Void {
    for i in 1...5 {
        // do somethign with i
        print(i)
    }
}

func switchCase(num: Int) -> Void {
    switch num {
    case 1:
        print("this is \num")
    default:
        print("default")
    }
}

// lets get to closure subject
let closureFn: () -> Void = {
    print("this is closure")
}

// closures with parameters
let add: (Int, Int) -> Int = { a, b in
        a + b
}

// trailing closures
// the last parameter of a funciton is a closure!
// so it can be move outside of the parentheses
func randomFunction(a: Int, b: Int, op: (Int, Int) -> Int) {
    let result = op(a, b)
    print(result)
}

// how to call it:
// not allowed so it got commented
//randomFunction(a: 2, b: 3) { x, y in
//    x + y
//}


// arrays
func arrs() -> Void {
    let nums = [1, 2, 3, 4]
    
    // map
    let map = nums.map { $0 * 2} // trailing closure :D
    
    // filter
    let filter = nums.filter { $0 % 2 == 0}
    
    // reduce
    let sum = nums.reduce(0) { // this has 2 func parameters, the last one de tralided it
        $0 + $1 // one is i + 1
    }
}

// dictionaries -- hashmap
func dics() {
    var map: [Int: String] = [1: "Amir", 2: "Reza"]
    
    // init empty dict
    var _ = [Int: String]()
    
}

func basicHashMapLongWay() {
    let nums = [1, 2, 2, 3, 1, 2, 4]
    var map = [Int: Int]()
    
    for num in nums {
        // if let is like if (map[num]) -- it needs new var to store the values we want to check the nil
        
        // it says: if map[num] wasnt nul, + 1 that
        if let current = map[num] {
            map[num] = current + 1
        } else {
            map[num] = 1
        }
    }
}

// better way
func basicHashMapShortWay(arr: [Int], target: Int) -> [Int]? {
    var map = [Int: Int]()
    
    for (idx, num) in arr.enumerated() {
        let complement = target - num
        if let complementIdx = map[complement] {
            return [complementIdx, idx]
        }
        
        map[num] = idx
    }
    return nil
}

// lets solve the goold old fation two sum
// for context
//
func twoSumBtureFors(arr: [Int], target: Int) -> [Int]? {
    for i in 0..<arr.count {
        for j in (i + 1)..<arr.count {
            if arr[i] + arr[j] == target {
                return [i, j]
            }
        }
    }
    
    return nil
}


// in JS
//for let i = 0; i < n; ++i {
//    for let j = i + 1 ...
//}


// sets
func set() -> Void {
    // Unique elements only 
    let a: Set<Int> = [1, 2]
    
}
