//: Playground - noun: a place where people can play
//Count Primes

/*
給一個n，計算比n小的質數有幾個
可以被分解的數不是質數，那麼不能被分解的數，就是質數
 
 Input: 10
 Output: 4
 Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
 */
import UIKit

struct Q0913{
    class Solution {
        
        func countPrimes(_ n: Int) -> Int {
            if n < 3{
                return 0
            }
            
            var prime:[Bool] = []
            for _ in 1...n{
                prime.append(true)
            }
            print("總共有\(prime.count)")
            
            prime[0] = false
            prime[1] = false
            for i in 2..<Int(sqrt(Double(n))) {
                print(i)
//                if prime[i]{
//                    for j in stride(from: i * i, to: n, by: i){
//                        prime[j] = false
//                    }
//                }
            }
            let count = prime.filter {$0 == true}
            return count.count
        }
    }
    
    static func getSolution()->Void {
        print(Solution().countPrimes(10))
        print(Solution().countPrimes(3))
        //print(Solution().countPrimes(0))
    }
}

Q0913.getSolution()



