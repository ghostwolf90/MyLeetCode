//: Playground - noun: a place where people can play
//Move Zeroes

/*
 把陣列中的 0 都移到最後面。
 例如 [0, 1, 0, 3, 12] 把 0 都移到後面後會變成 [1, 3, 12, 0, 0]
 
 Note:
 不能使用額外的陣列，單純修改原本的陣列。
 
 解題
 把原本的陣列 0 都除掉，算出原本陣列長度與除去 0 之後的長度。
 缺少幾個 0 就補到後面去。
 */
import UIKit

func moveZeroes(_ nums: inout [Int]) ->[Int] {
    let count = nums.count
    nums = nums.filter{$0 != 0}
    let lastCount = count - nums.count
    for _ in 0..<lastCount {
        nums.append(0)
    }
    return nums
}

var simples = [0, 1, 0, 3, 12]
moveZeroes(&simples)
print(simples)



