//: Playground - noun: a place where people can play
//Contains Duplicate

/*
 遍历 太慢 只做n时间复杂度的
 Example1:
 Input: [1,2,3,1]
 Output: true
 
 Example2:
 Input: [1,2,3,4]
 Output: false
 
 Example3:
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */
import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}
print(containsDuplicate([1,2,3,1]))
print(containsDuplicate([1,2,3,4]))



