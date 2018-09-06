//: Playground - noun: a place where people can play
/*
 Valid Palindrome
 給一個字串，不考慮大小寫與非字母數字的情況下，判斷這個字串是不是迴文。
 範例：
 "A man, a plan, a canal: Panama" --> true
 "race a car" --> false (raceacar != racaecar)
 注意：
 你有考慮過空字串的情況嗎，在這邊我們定義空字串是一個迴文。
 
 所謂 Palindrome 就是迴文，也就是那些倒過來看還是一樣的文字，例如 aabaa
 */
import UIKit

struct q0109{
    
    class Solution {
        func isPalindrome(_ s: String) -> Bool {
            let c = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "")            
            return Bool(String(c).lowercased() == String(c.reversed()).lowercased())
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().isPalindrome("race a car"))
        print(Solution().isPalindrome("A man, a plan, a canal: Panama"))
    }
}
q0109.getSolution()

