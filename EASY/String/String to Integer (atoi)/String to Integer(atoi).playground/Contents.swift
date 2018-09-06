//: Playground - noun: a place where people can play
/*
String to Integer (atoi)
 
 Example 1:
 
 Input: "42"
 Output: 42
 
 Example 2:
 Input: "   -42"
 Output: -42
 Explanation: The first non-whitespace character is '-', which is the minus sign.
 Then take as many numerical digits as possible, which gets 42.
 
 Example 3:
 Input: "4193 with words"
 Output: 4193
 Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
 
 Example 4:
 Input: "words and 987"
 Output: 0
 Explanation: The first non-whitespace character is 'w', which is not a numerical
 digit or a +/- sign. Therefore no valid conversion could be performed.
 
 Example 5:
 Input: "-91283472332"
 Output: -2147483648
 Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer.
 Thefore INT_MIN (−231) is returned.
 */
import UIKit

struct q0905{
    
    class Solution {
        func myAtoi(_ str: String) -> Int {
            guard str.count > 0 else {
                return 0
            }
            return 0
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().myAtoi("42"))
        print(Solution().myAtoi("-91283472332"))
    }
}

q0905.getSolution()

