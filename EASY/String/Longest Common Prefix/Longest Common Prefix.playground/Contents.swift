//: Playground - noun: a place where people can play
/*
 Longest Common Prefix
 一個陣列中有許多個字串，寫一個function找出這些字串 最長的共同字首。
 範例：
 ['abcd','abccc','abdec'] --> 共同字首為 'ab' 。
 */
import UIKit

struct Q0113 {
    class Solution {
        func longestCommonPrefix(_ strs: [String]) -> String {
            guard strs.count > 0 else {
                return ""
            }            
            let firstStr = strs.first!
            var prefix = ""
            for prefixChar in firstStr{
                let shouldCheckPrefix = prefix + String(prefixChar)
                for str in strs where !str.hasPrefix(shouldCheckPrefix){
                    return String(prefix)
                }
                prefix = shouldCheckPrefix
            }
            return prefix
        }
    }
    
    static func getSolution()->Void{
        print(Solution().longestCommonPrefix(["abcd","abccc","abdec"]))
    }
    
}

Q0113.getSolution()
