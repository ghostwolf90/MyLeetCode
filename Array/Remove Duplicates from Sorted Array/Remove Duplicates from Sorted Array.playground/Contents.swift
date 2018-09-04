//: Playground - noun: a place where people can play
//Remove Duplicates from Sorted Array

/*
 給一個排序過的陣列，移除重複的值，每個元素只能留下一個。
 不能使用其他的陣列空間，必需在本來的陣列中操作。
 範例： [1,1,2] 去除重複的1之後，剩下[1,2]，回傳陣列的長度2。
 */
import UIKit

struct Q0804{
    class Solution {
        
        func removeDuplicates(_ nums: [Int]) -> Int {
            var nums = nums
            var count = 1
            guard nums.count > 0 else {
                return 0
            }
            
            nums = nums.flatMap{$0}
            for i in 1..<nums.count{
                print("\(nums[i - 1]) != \(nums[i])")
                if nums[i - 1] != nums[i]{
                    nums[count] = nums[i]
                    count += 1
                }
            }
            return count
        }
    }
    
    static func getSolution()->Void {
        print(Solution().removeDuplicates([1,1,2]))
        print(Solution().removeDuplicates([1,2,3,4]))
        print(Solution().removeDuplicates([]))
    }
}

Q0804.getSolution()
