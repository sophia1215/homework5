//: Playground - noun: a place where people can play

import UIKit

/****** hw5-1 ******
 計算全部格子的總和
 *******************/

var sum1 = 0
for row in 0...7 {
    for col in 0...7 {
        //打印題目
        print(row * col, separator: "", terminator: "\t")
        sum1 += row * col
    }
    print("\n")
}
print("全部格子的總和為: \(sum1)")


/****** hw5-2 ******
 計算奇數行的數字總和
 *******************/

var sum2 = 0
for row in 0...7 {
    for col in 0...7 where col % 2 != 0 {
        //打印題目
        print(row * col, separator: "", terminator: "\t")
        sum2 += row * col
    }
    print("\n")
}
print("奇數行的數字總和為: \(sum2)\n\n")


/****** hw5-3 *********************
 計算所有格子的總和，除了列數>=行數的格子
 **********************************/

var sum3 = 0
for row in 0...7 {
    for col in 0...7 where row < col {
        //打印題目
        print(row * col, separator: "", terminator: "\t")
        sum3 += row * col
    }
    print("\n")
}
print("除了列數>=行數的格子外，總和為: \(sum3)")



/****** hw5-4 *********************************************
 定義function
 接受3個參數: 起始值,最大值和決定數字倍數的number,回傳運算結果
 比方: 起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數)
 運算結果為 5 + 10 + 15 + ..... + 95
 **********************************************************/

func multiple(startNum: Int, endNum: Int, stepNum: Int) {
    var sum = 0
    var strPlus = ""
    
    for num in startNum...endNum where num % stepNum == 0 {
        sum += num
        (endNum - endNum % stepNum == num) ? (strPlus = "") : (strPlus = "+")
        print("\(num)\(strPlus)", separator: "", terminator: "")
    }
    print("=\(sum)\n", separator: "", terminator: "")
}
multiple(startNum: 3, endNum: 98, stepNum: 5)


/****** hw5-5 *********************************************
 定義function
 接受3個參數: 起始值,最大值和決定數字倍數的number,回傳運算結果
 比方: 起始值3,最大值11,決定數字倍數的number為5時，(不包含5的倍數)
 運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11
 **********************************************************/

func multiple2(startNum: Int, endNum: Int, stepNum: Int) {
    var sum = 0
    var strPlus = ""
    
    for num in startNum...endNum where num % stepNum > 0 {
        sum += num
        (endNum % stepNum > 0) ? (strPlus = "+") : (strPlus = "")
        //(endNum - endNum % stepNum == num) ? (strPlus = "") : (strPlus = "+")
        print("\(num)\(strPlus)", separator: "", terminator: "")
    }
    print("=\(sum)\n\n", separator: "", terminator: "")
}
multiple2(startNum: 3, endNum: 11, stepNum: 5)


/****** hw5-6 ***************
 計算奇數行的數字總和
 定義function
 接受2個參數,分別代表行數和列數
 ****************************/

func oddColumnSum(rowNum: Int, colNum: Int) {
    var sum = 0
    
    for row in 0...rowNum {
        for col in 0...colNum where col % 2 != 0 {
            //打印題目
            print(row * col, separator: "", terminator: "\t")
            sum += row * col
        }
        print("\n")
    }
    print("奇數行的數字總和為：\(sum)")
}
oddColumnSum(rowNum: 7, colNum: 7)


/****** hw5-7 *********************
 計算所有格子的總和,除了列數>=行數的格子
 定義function
 接受2個參數,分別代表行數和列數
 **********************************/

func rowLessThanColSum(rowNum: Int, colNum: Int) {
    var sum = 0
    
    for row in 0...rowNum {
        for col in 0...colNum where row < col {
            //打印題目
            print(row * col, separator: "", terminator: "\t")
            sum += row * col
        }
        print("\n")
    }
    print("除了列數>=行數的格子外，總和為: \(sum)")
}
rowLessThanColSum(rowNum: 7, colNum: 7)


/****** hw5-8 *******************
 定義一個function
 接受一個參數代表華式溫度,回傳攝式溫度
 ********************************/

func convertFtoC(fahrenheit: Double) -> String {
    //let celsius = (fahrenheit - 32) * 5 / 9
    let celsius = (fahrenheit - 32) / 1.8
    return "\(fahrenheit)℉ = \(celsius)℃"
}
convertFtoC(fahrenheit: 100)



