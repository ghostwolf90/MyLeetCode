//: Playground - noun: a place where people can play
//Plus One

/*
 給一包含非數整數的陣列，其中每一個值代表該位數的值，對這個陣列加1。
 範例：
 19 = [1,9] ， 19+1 = 20 = [2,0]。
 */
import UIKit

struct Q0830{
    
    class Solution {
        
        func plusOne(_ digits: [Int]) -> [Int] {
            var digits = digits
            digits[digits.count - 1] += 1
            while digits.contains(10) {
                let index = digits.index(of: 10)!
                digits[index] = 0
                if index - 1 >= 0{
                    digits[index - 1] += 1
                }else{
                    var newDigits = [1]
                    newDigits.append(contentsOf: digits)
                    digits = newDigits
                }
            }
            return digits
        }
    }
    
    static func getSolution()->Void {
        print(Solution().plusOne([7]))
        print(Solution().plusOne([1,9]))
        print(Solution().plusOne([9,9,9]))
        print(Solution().plusOne([8,9,9]))
    }
}

Q0830.getSolution()

