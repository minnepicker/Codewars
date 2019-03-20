//
//  Switch It Up!.swift
//  Codewars
//
//  Created by morse on 3/3/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

//When provided with a number between 0-9, return it in words.
//
//Input :: 1
//
//Output :: "One".
//
//Try using "Switch" statements.

func switchItUp(_ number: Int) -> String {
    switch number {
    case 0: return "Zero"
    case 1: return "One"
    case 2: return "Two"
    case 3: return "Three"
    case 4: return "Four"
    case 5: return "Five"
    case 6: return "Six"
    case 7: return "Seven"
    case 8: return "Eight"
    case 9: return "Nine"
    default: return "That is not a number I know..."
    }
}


// They say these are better, but, 
//Clever
//func switchItUp(_ number: Int) -> String {
//    return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
//}

//Best Practices
//func switchItUp(_ number: Int) -> String {
//    let array = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
//    return array[number]
//}
