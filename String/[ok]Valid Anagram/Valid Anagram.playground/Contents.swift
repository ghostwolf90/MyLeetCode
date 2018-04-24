//: Playground - noun: a place where people can play

import UIKit

struct q0109{
    class Solution {
        
        ///計算字串的字數統計
        func countCharacter(_ s:String) -> [Character:Int]{
            var charCount = [Character:Int]()
            for character in s {
                //print(character)
                if let _ = charCount[character] {
                    charCount[character]! += 1
                } else {
                    charCount[character] = 1
                }
            }
            print(charCount)
            return charCount
        }
        
        func isAnagram(_ s: String, _ t: String) -> Bool {
            var isAnagram = true
            let characterS = countCharacter(s)
            let characterT = countCharacter(t)
            if (s.count != t.count) { isAnagram = false }
            
            for(index, value) in characterS{
                if let count = characterT[index]{
                    if count == value{
                        continue
                    }
                }
                return false
            }
            return isAnagram
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().isAnagram("anagram", "nagaram"))
        print(Solution().isAnagram("rat", "car"))
    }
}

q0109.getSolution()
