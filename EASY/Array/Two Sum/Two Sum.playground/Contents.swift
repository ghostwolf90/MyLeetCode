//: Playground - noun: a place where people can play
//Two Sum

/*
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 丟進一個整數陣列和一個目標值， 並且回傳一個整數陣列， 其中包含兩個數， 這兩個數的總和應該等於目標值
 必須保證每一次輸入的數字都能夠有一個正確的答案， 並且不會重複使用同一個(元素 (第一次看成數字 X_X))
 */
import UIKit

struct Q0804{
    class Solution {
        
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var dict = [Int:Int]()
            for i in 0..<nums.count{
                //print(dict)
                if let target = dict[nums[i]]{
                    return [target, i]
                }else{
                    dict[target - nums[i]] = i
                    print(dict)
                }
            }
            return [0]
        }
    }
    
    static func getSolution()->Void {
        print(Solution().twoSum([2, 7, 11, 15], 9))
    }
}

Q0804.getSolution()

