//: Playground - noun: a place where people can play
//给出一个字符串，找到其中第一个不重复的字母并返回它的序号。如果不存在，则返回-1
import UIKit

func firstUniqChar(_ s: String) -> Int {
    var alphabet = [Int?](repeating: nil, count: 26)
    
    for c in s.utf8 {
        let index = Int(c - 97)
        if var val = alphabet[index] {
            val += 1
            alphabet[index] = val
        } else {
            alphabet[index] = 1
        }
    }
    
    var index = 0
    for c in s.utf8 {
        if alphabet[Int(c - 97)] == 1 {
            return index
        }
        index += 1
    }
    return -1
}

print(firstUniqChar("loveleetcode"))




