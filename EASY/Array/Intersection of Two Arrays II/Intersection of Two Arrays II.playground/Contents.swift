//: Playground - noun: a place where people can play
//Intersection of Two Arrays II

/*
 Example1:
 IInput: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2,2]
 
 Example2:
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [4,9]
 */
import UIKit

struct Q0904{
    class Solution {
        
        func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
            var longs = [Int]()
            var shorts = [Int]()
            if nums1.count > nums2.count{
                longs = nums1
                shorts = nums2
            }else{
                longs = nums2
                shorts = nums1
            }
            
            var intersections = [Int]()
            for (index, shortElement) in shorts.enumerated(){
                if longs.contains(shortElement){
                    intersections.append(shortElement)
                    let index = longs.index(of: shortElement)!
                    longs.remove(at: index)
                }
            }
            
            return intersections
        }
    }
    
    static func getSolution()->Void {
        print(Solution().intersect([1,2,2,1], [2,2]))
        print(Solution().intersect([4,9,5], [9,4,9,8,4]))
    }
}

Q0904.getSolution()



