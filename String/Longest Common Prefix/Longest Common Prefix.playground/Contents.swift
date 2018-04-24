//: Playground - noun: a place where people can play
/*
 Longest Common Prefix
 一個陣列中有許多個字串，寫一個function找出這些字串最長的共同字首。
 範例：
 ['abcd','abccc','abdec'] --> 共同字首為 'ab' 。
 */
import UIKit

struct Q0113 {
    class Solution {
        func longestCommonPrefix(_ strs: [String]) -> String {
            let sA = strs[0]
            let sB = strs[1]
            var comA = sA
            var comB = sB
            if sA.count < sB.count{
                comA = sB
                comB = sA
            }
            
            
            
            return "1"
        }
    }
    
    static func getSolution()->Void{
        print(Solution().longestCommonPrefix(["abcd","abccc","abdec"]))
    }
    
}

Q0113.getSolution()
