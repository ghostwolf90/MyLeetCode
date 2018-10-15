//: Playground - noun: a place where people can play
//Implement strStr()
/*
 給一個陣列跟欲查詢的字串，輸出該字串最先出現的索引值，如果沒有符合則輸出-1
 例如："abdegl"，欲查詢："b"，輸出：1
 */
import UIKit

struct Q0113{
    class Solution {
        func strStr(_ haystack: String, _ needle: String) -> Int {
            if haystack.count > 0 && needle.count == 0{
                return 0
            }else if let range = haystack.range(of: needle){
                return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            }else if haystack.count > 0 && needle.count > 0{
                return -1
            }else if haystack.count == 0 && needle.count == 0{
                return 0
            }
            return -1
        }
    }
    
    static func getSolution()->Void {
        print(Solution().strStr("aaaaa", "bba"))
        print(Solution().strStr("", "a"))
        print(Solution().strStr("a", ""))
    }
}

Q0113.getSolution()
