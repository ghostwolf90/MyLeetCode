//: Playground - noun: a place where people can play
//Rotate Array

/*
 Input1:
 Input: [1,2,3,4,5,6,7] and k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 
 Input2:
 Input: [-1,-100,3,99] and k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 */
import UIKit

func rotate(_ nums: inout [Int], _ k: Int) {
    let count = nums.count
    let step = k % count
    let range = count - step
    var backs = nums[0..<range]
    var fronts = nums[range...]
    nums = Array(fronts) + Array(backs)
//    nums.reverse()
//    nums[0..<step].reverse()
//    nums[step..<count].reverse()
    print(nums)
}

var simplesA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
rotate(&simplesA, 3)

//var simplesB = [-1,-100,3,99]
//rotate(&simplesB, 2)
