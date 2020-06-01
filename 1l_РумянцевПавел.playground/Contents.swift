import Foundation

// Решение квадратного уравнения ax^2 + bx + c = 0

var a : Double = -30
var b : Double = 132.23
var c : Double = 40
let dis = b * b - 4 * a * c

var x = Double()
var x1 = Double()
var x2 = Double()
let sq = sqrt(dis)

if (dis > 0) {
    x1 = (-b - sq) / (2 * a)
    x2 = (-b + sq) / (2 * a)
    print("Корни уравнения: ",x1, "и",x2)
} else if (dis == 0) {
    x = -b / (2 * a)
    print("Уравнение имеет единственный корень: ",x)
} else {
    print("Уравнение не имеет действительных решений!")
}

// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let cathetA = 10
let cathetB = 8

let area = (cathetA * cathetB) / 2
print("Площадь треугольника равна: ",area)

let hypo = sqrt(Double(cathetA * cathetA) + Double(cathetB * cathetB))
print("Гипотенуза прямоугольного теругольника равна: ",hypo)

let perimeter = Double(cathetA + cathetB) + hypo
print("Периметр прямоугольного треугольника равен: ",perimeter)

// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum : Double = 10000
let persent = 12

var profit = (1 + Double(persent) / 100)
var i = 1
var roundedSum = String(format: "%.2f", sum)

repeat {
    sum = (Double(sum) * profit)
    roundedSum = String(format: "%.2f", sum)
    print("Сумма вклада через ",i," лет: ",roundedSum)
    i+=1
} while i < 6

