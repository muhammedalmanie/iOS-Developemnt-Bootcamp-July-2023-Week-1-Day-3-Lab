// Lab 3
import Foundation


// Task 1
func greetUser(name: String) -> String {
    return "Welcome \(name)!"
}

print(greetUser(name: "Mohammed"))
print(greetUser(name: "Ali"))


// Task 2
func calculateAreaCircle(radius: Double)->Double{
   return Double.pi * pow(radius, 2)
}
func calculateAreaRectangle(length: Double, width: Double)->Double{
    return length * width
}

var result1 = calculateAreaCircle(radius: 2)
print("The circle area =", result1)
var result2 = calculateAreaRectangle(length: 2, width: 4)
print("The rectangle area =", result2)


// Task 3
func mathOperation(_ num1: Int, _ num2: Int, _ operation: String) -> Int? {
    func add(_ x: Int, _ y: Int) -> Int{
        return x + y }
    
    func subtract(_ x: Int, _ y: Int) -> Int{
        return x - y }
    
    func multiply(_ x: Int, _ y: Int) -> Int{
        return x * y }
    
    func divide(_ x: Int, _ y: Int) -> Int?{
        if y == 0 {
            return nil }
        return x / y }
    
    switch operation{
    case "add":
        return add(num1, num2)
    case "subtract":
        return subtract(num1, num2)
    case "multiply":
        return multiply(num1, num2)
    case "divide":
        return divide(num1, num2)
    default:
        return nil
    }
}

var result3 = mathOperation(3, 5, "add")
print("The add operation result =", result3)
var result4 = mathOperation(2, 2, "multiply")
print("The multiply operation result =", result4)


// Task 4
let array = [1, 2, 3, 4, 5]
let addedone = array.map { $0 + 1 }
let evennumbers = array.filter { $0 % 2 == 0 }
let sum = array.reduce (0, { $0 + $1 })
print("The array + 1 =", addedone)
print("The even numbers =", evennumbers)
print("The array sum =", sum)


// Task 5
let multClosure: (Int) -> Int = { num in
    return num * num }

var result5 = multClosure(3)
print("Multiplication of an Int by itself =", result5)

let array2 = [1, 2, 3]
let squared = array2.map(multClosure)
print("The squared array elemnts =")
squared.forEach{num in print(num)}
