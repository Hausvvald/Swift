import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.
print("1. Написать функцию, которая определяет, четное число или нет.\n")

func evenNumber (value: Int) {
    if value % 2 == 0 {
        print("Число \(value) четное\n")
    } else {
        print("Число \(value) не четное\n")
    }
}

let inspection: () = evenNumber(value: 99)
print("==================================\n")

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
print("2. Написать функцию, которая определяет, делится ли число без остатка на 3.\n")

func balance (value: Int) {
    if value % 3 != 0 {
        print("Число \(value) не делится без остатка на число 3\n")
    } else {
        print("Число \(value) делится без остатка на число 3\n")
    }
}

var result: () = balance(value: 8)
print("==================================\n")

// 3. Создать возрастающий массив из 100 чисел.
print("3. Создать возрастающий массив из 100 чисел.\n")

var massive: Array<Int> = []

for i in 1...100 {
    massive.append(i)
}

/* var array = Array(1...100)
print(array)
 */

print(massive)
print("==================================\n")


// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
print("4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.")

var filter = massive.filter {$0 % 2 != 0 && $0 % 3 == 0}

print(filter)
print("==================================\n")

// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
print("* Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.\n")

func newArray(i: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...i).forEach { i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}

print(newArray(i: 101))
print("==================================\n")

// 6. * Заполнить массив из 100 элементов различными простыми числами.

func simpleMassive(arrayPassed: [Int]) -> [Int] {
    var simple: [Int] = []
    var newArray = arrayPassed
    while let p = newArray.first {
        simple.append(p)
        newArray = newArray.filter { $0 % p != 0 }
    }
    return simple
}
print(simpleMassive(arrayPassed: Array(2...100)))
