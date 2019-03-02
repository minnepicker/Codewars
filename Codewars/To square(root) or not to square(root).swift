//
//  To square(root) or not to square(root).swift
//  Codewars
//
//  Created by morse on 2/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

//#To square(root) or not to square(root)
//
//Write a method, that will get an integer array as parameter and will process every number from this array.
//Return a new array with processing every number of the input-array like this:
//
//If the number has an integer square root, take this, otherwise square the number.
//
//[4,3,9,7,2,1] -> [2,9,3,49,4,1]
//The input array will always contain only positive numbers and will never be empty or null.
//
//The input array should not be modified!

import Foundation

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    var newArray = [Int]()
    for num in input {
        if Double(Int(sqrt(Double(num)))) == sqrt(Double(num)) {
            newArray.append(Int(sqrt(Double(num))))
        } else {
            newArray.append(Int(num * num))
        }
    }
    return newArray
}

// Best Practice & Clever
func squareOrSquareRoot1(_ input: [Int]) -> [Int] {
    return input.map { i in
        let r = sqrt(Double(i))
        return r.truncatingRemainder(dividingBy: 1).isZero ? Int(r) : i * i
    }
}

/// Best Practice
func squareOrSquareRoot2(_ input: [Int]) -> [Int] {
    return input.map{
        let root = (sqrt(Double($0)))
        return root.truncatingRemainder(dividingBy: 1) == 0 ? Int(root) : $0 * $0
    }
}
