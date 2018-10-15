//: Playground - noun: a place where people can play

import UIKit

    func reverse(_ x: Int) -> Int {
        var x = x
        var reversedX = 0
        while x != 0{
            //由於數來組成Reverse
            reversedX = reversedX * 10 + x % 10
            //print(reversedX)
            x /= 10
            if (reversedX < 0 && x != 0 && Int(Int32.min)/10 > reversedX) {return 0}
            if (reversedX > 0 && x != 0 && Int(Int32.max)/10 < reversedX) {return 0}
        }
        return reversedX
    }

    print(reverse(1234))
    print(reverse(1534236469))
    print(reverse(-9223372036854774999))
    print(reverse(9223372036854774999))
    print(reverse(-2147483412))



