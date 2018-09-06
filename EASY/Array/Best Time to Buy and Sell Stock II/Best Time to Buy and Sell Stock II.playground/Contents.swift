//: Playground - noun: a place where people can play
//Best Time to Buy and Sell Stock II

/*
 舉例 [2,1,3,4,5,4,2,8,7]
 在第二天買 1 第五天賣 5 可以賺 4
 但在第二天買 1 第三天賣 3 ，第三天買 3 第四天賣 4 ， 第四天買 4 第五天賣 5 ，也會賺 4 。
 所以只要當天減去昨天是賺的，就加進結果中，反之則無視。
 
 Example 1:
 Input: [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.

 */
import UIKit

struct Q0904{
    class Solution {
        
        func maxProfit(_ prices: [Int]) -> Int {
            guard prices.count > 0 else {
                return 0
            }
            var profit = 0
            for i in 1..<prices.count{
                
                profit += prices[i] > prices[i - 1] ? prices[i] - prices[i - 1] : 0
            }
            
            return profit
        }
    }

    static func getSolution()->Void {
        print(Solution().maxProfit([2,1,3,4,5,4,2,8,7]))
        print(Solution().maxProfit([7,1,5,3,6,4]))
        print(Solution().maxProfit([1,2,3,4,5]))
        print(Solution().maxProfit([7,6,4,3,1]))
    }
}

Q0904.getSolution()
