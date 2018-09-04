//: Playground - noun: a place where people can play
//Single Number

/*
 給一個整數陣列 nums, 裡面只有一個數字出現一次，其他都是出現兩次，找出那個孤單的數字。
 Input: [2,2,1]
 Output: 1
 Input: [4,1,2,1,2]
 Output: 4
 */
import UIKit

struct Q0830{
    class Solution {
        
        func singleNumber(_ nums: [Int]) -> Int {
            var result = 0
            for num in nums{
                result ^= num
            }            
            return result
        }
    }
    
    static func getSolution()->Void {
        print(Solution().singleNumber([2,2,1]))
        print(Solution().singleNumber([4,1,2,1,2]))
        print(Solution().singleNumber([]))
    }
}

Q0830.getSolution()
