//: Playground - noun: a place where people can play
//Valid Sudoku

/*
 給一個整數陣列 nums, 裡面只有一個數字出現一次，其他都是出現兩次，找出那個孤單的數字。
 Input1:
 [
 ["5","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]
 ]
 Output: true
 
 Input2:
 [
 ["8","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]
 ]
 Output: false
 */
import UIKit

struct Q0903{
    class Solution {
        
        func isValidSudoku(_ board: [[Character]]) -> Bool {
            var isValid = true
            
            //檢查行(直)
            var rows = [Character]()
            var isValidRow = true
            for i in 0..<board.count{
                rows.removeAll()
                for j in 0..<board.count{
                    let row = board[j][i]
                    if (row != "."){
                        rows.append(row)
                    }
                }
                //print(rows)
                var containsRows = [Character]()
                var repeatRows = [Character]()
                for i in rows {
                    if !containsRows.contains(i) {
                        containsRows.append(i)
                    }else{
                        repeatRows.append(i)
                    }
                }
                //print("repeatRows \(repeatRows)")
                if repeatRows.count > 0{
                    isValidRow = false
                    break
                }
            }
            
            
            //檢查列(橫)
            var cols = [Character]()
            var isValidcol = true
            for i in 0..<board.count{
                cols.removeAll()
                for j in 0..<board.count{
                    let col = board[i][j]
                    if (col != "."){
                        cols.append(col)
                    }
                }
                //print(cols)
                var containsCols = [Character]()
                var repeatCols = [Character]()
                for i in cols {
                    if !containsCols.contains(i) {
                        containsCols.append(i)
                    }else{
                        repeatCols.append(i)
                    }
                }
                //print("repeatCols \(repeatCols)")
                if repeatCols.count > 0{
                    isValidcol = false
                    break
                }
            }
            
            
            //檢查3*3 cube
            var cube = [Character]()
            var isValidCube = true
            for i in 0..<board.count{
                cube.removeAll()
                for j in 0..<board.count{
                    let rowIndex = 3*(i/3)
                    let colIndex = 3*(i%3)
                    let cubeValue = board[rowIndex + j/3][colIndex + j%3]
                    if (cubeValue != "."){
                        cube.append(cubeValue)
                    }
                }
                //print("cube \(cube)")
                var containsCubes = [Character]()
                var repeatCubes = [Character]()
                for i in cube {
                    if !containsCubes.contains(i) {
                        containsCubes.append(i)
                    }else{
                        repeatCubes.append(i)
                    }
                }
                //print("repeatCubes \(repeatCubes)")
                if repeatCubes.count > 0{
                    isValidCube = false
                    break
                }
            }
            if !isValidRow || !isValidcol || !isValidCube{
                isValid = false
            }
            return isValid
        }
    }

    static func getSolution()->Void {
        print(Solution().isValidSudoku([["8","3",".","3","7",".",".",".","."],
                                        ["6",".",".","1","9","5",".",".","."],
                                        [".","9","8",".",".",".",".","6","."],
                                        ["8",".",".",".","6",".",".",".","3"],
                                        ["4",".",".","8",".","3",".",".","1"],
                                        ["7",".",".",".","2",".",".",".","6"],
                                        [".","6",".",".",".",".","2","8","."],
                                        [".",".",".","4","1","9",".",".","5"],
                                        [".",".",".",".","8",".",".","7","9"]]))
        print(Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."],
                                        ["6",".",".","1","9","5",".",".","."],
                                        [".","9","8",".",".",".",".","6","."],
                                        ["8",".",".",".","6",".",".",".","3"],
                                        ["4",".",".","8",".","3",".",".","1"],
                                        ["7",".",".",".","2",".",".",".","6"],
                                        [".","6",".",".",".",".","2","8","."],
                                        [".",".",".","4","1","9",".",".","5"],
                                        [".",".",".",".","8",".",".","7","9"]]))
        print(Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."],
                                        ["6",".",".","1","9","5",".",".","."],
                                        [".","9","8",".",".",".",".","6","."],
                                        ["8",".",".",".","6",".",".",".","3"],
                                        ["4",".",".","8",".","3",".",".","1"],
                                        ["7",".",".",".","2",".",".",".","6"],
                                        [".","6",".",".",".",".","2","8","."],
                                        [".",".",".","4","1","9",".",".","5"],
                                        [".",".",".",".","8",".",".","7","9"]]))
    }
}

Q0903.getSolution()
