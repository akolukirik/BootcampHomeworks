// Ali İhsan Kolukırık

import UIKit

class Homework2 {

    func convertCelciusToFahrenheit(celcius: Int) -> Float {
        return (Float(celcius) * 1.8 + 32)
    }

    func calculatePerimeterOfRectangle(longEdge: Double, shortEdge: Double) {
        let perimeter = ( longEdge + shortEdge ) * 2
        print("Perimeter of Rectangle: \(perimeter)")
    }

    func calculateFactorial(number: Int) -> Int {
        var total = 1
        for i in stride(from: number, through: 1, by: -1) {
            total *= i
        }
        return total
    }

    func letterCounter(letter: Character, word: String) {
        var counter = 0
        for i in word {
            if i == letter {
                counter += 1
            }
        }
        print("Number of letters in the word: \(counter)")
    }

    func calculateInternalAngle(edges: Int) -> Int {
        let angle = (edges - 2) * 180
        return angle
    }

    func calculateSalary(workingDays: Int) -> Int{
        var salary = 0
        var calculateSalary = 0
        let normalWorkingDay = 20
        let workingHours = 8
        let normalWorkingHourPay = 10
        let extraWorkingHourPay = 20

        if workingDays > 20 {
            salary = ((normalWorkingDay * workingHours ) * normalWorkingHourPay ) + (( workingDays - normalWorkingDay ) * workingHours) * extraWorkingHourPay
            calculateSalary = salary
        } else {
            salary = (workingDays * workingHours) * normalWorkingHourPay
            calculateSalary = salary
        }
        return calculateSalary
    }

    func calculateInternetBill(usage: Int) -> Int {
        let normalInternetBill = 100
        var calculateExtraInternet = 0

        if usage > 50 {
            calculateExtraInternet = (usage - 50) * 4
            return (normalInternetBill + calculateExtraInternet)
        }
        return normalInternetBill
    }
}

let solution = Homework2()

let fahrenheit = solution.convertCelciusToFahrenheit(celcius: 30)
print("Celcius to Fahrenheit: \(fahrenheit)")

solution.calculatePerimeterOfRectangle(longEdge: 25.3, shortEdge: 12.7)

let factorial = solution.calculateFactorial(number: 5)
print("Factorial: \(factorial)")

solution.letterCounter(letter: "a", word: "ankara")

let internalAngle = solution.calculateInternalAngle(edges: 3)
print("Internal Angle: \(internalAngle)")

let calculateSalary = solution.calculateSalary(workingDays: 25)
print("Total Salary of woking days: \(calculateSalary)")

let internetBill = solution.calculateInternetBill(usage: 55)
print("Total internet bill: \(internetBill)")
