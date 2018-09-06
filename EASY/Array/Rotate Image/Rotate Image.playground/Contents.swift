//: Playground - noun: a place where people can play
//Rotate Image

/*
 給一個整數陣列 nums, 裡面只有一個數字出現一次，其他都是出現兩次，找出那個孤單的數字。
 Input1:
 Given input matrix =
 [
 [1,2,3],
 [4,5,6],
 [7,8,9]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [7,4,1],
 [8,5,2],
 [9,6,3]
 ]
 
 Input2:
 Given input matrix =
 [
 [ 5, 1, 9,11],
 [ 2, 4, 8,10],
 [13, 3, 6, 7],
 [15,14,12,16]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [15,13, 2, 5],
 [14, 3, 4, 1],
 [12, 6, 8, 9],
 [16, 7,10,11]
 ]
 */
import UIKit

func rotate(_ matrix: inout [[Int]]) {
    
    var rows = [Int]()
    var rotate = [[Int]]()
    for i in 0..<matrix.count{
        rows.removeAll()
        for j in 0..<matrix.count{
            let row = matrix[j][i]
            rows.append(row)
        }
        rows = rows.reversed()
        rotate.append(rows)
    }
    print(rotate)
}


var simplesA = [[1,2,3],
                [4,5,6],
                [7,8,9]]
rotate(&simplesA)


var simplesB = [[ 5, 1, 9,11],
                [ 2, 4, 8,10],
                [13, 3, 6, 7],
                [15,14,12,16]]
rotate(&simplesB)

var simplesC = [[1,2,3],[4,5,6],[7,8,9]]
rotate(&simplesC)

