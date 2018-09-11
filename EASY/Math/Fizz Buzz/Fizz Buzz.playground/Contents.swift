//: Playground - noun: a place where people can play
//Fizz Buzz

/*
印出 1 到 100，但如果是 3 的倍數就印 Fizz，如果是 5 的倍數就印 Buzz，如果同時是 3 和 5 的倍數就印 FizzBuzz
 */
import UIKit

struct Q0904{
    class Solution {
        
        func fizzBuzz(_ n: Int) -> [String] {
            var results = [String]()
            
            for value in 1...n{
                if value % 3 == 0 && value % 5 == 0{
                    results.append("FizzBuzz")
                }else{
                    if value % 3 == 0{
                        results.append("Fizz")
                    }else if value % 5 == 0{
                        results.append("Buzz")
                    }else{
                        results.append("\(value)")
                    }                    
                }
            }
            return results
        }
    }
    
    static func getSolution()->Void {
        print(Solution().fizzBuzz(15))
        print(Solution().fizzBuzz(3))
    }
}

Q0904.getSolution()



