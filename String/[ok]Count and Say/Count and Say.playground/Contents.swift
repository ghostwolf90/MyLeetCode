//: Playground - noun: a place where people can play

import UIKit

struct Q0113{
    class Solution {
        func countAndSay(_ n: Int) -> String {
            var str = "1"
            for _ in 1..<n{
                var tmpStr = ""
                var pNum = 0
                var pChar = str.first
                for(_, char) in str.enumerated(){
                    if char == pChar{
                        pNum += 1
                    }else{
                        tmpStr += "\(pNum)\(pChar!)"
                        pChar = char
                        pNum = 1
                    }
                }
                if pNum != 0{
                    tmpStr += "\(pNum)\(pChar!)"
                }
                str = tmpStr
            }
            return str
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().countAndSay(1))
        print(Solution().countAndSay(2))
        print(Solution().countAndSay(3))
        print(Solution().countAndSay(4))
        print(Solution().countAndSay(5))
    }
}

Q0113.getSolution()


