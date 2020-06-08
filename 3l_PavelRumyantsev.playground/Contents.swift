import UIKit

enum engine{
    case start
    case stop
}

enum windows{
    case open
    case close
}

struct vehicle {
    let brand: String
    let release: Int
    var luggage: Int
    var engine : engine{
        willSet {
            if newValue == .start {
                print ("\(brand) двигатель запущен")
            } else {print("\(brand) двигатель заглушен")}
        }
    }
    var windows : windows {
        willSet {
            if newValue == .open {
                print("\(brand) окна открыты")
            } else { print("\(brand) окна закрыты") }
        }
    }
    var filledLuggage: Int
}

var car = vehicle(brand: "Mazda", release: 2020, luggage: 200, engine: .start, windows: .close, filledLuggage: 50)
var truck = vehicle(brand: "Volvo", release: 1999, luggage: 800, engine: .stop, windows: .open, filledLuggage: 500)

car.engine = .start
truck.windows = .close

print("Машина марки \(car.brand) выпущена в \(car.release).")
print("Грузовик марки \(truck.brand) выпущена в \(truck.release).")
print("Заполненный объем багажника \(truck.brand): \(truck.filledLuggage) из \(truck.luggage).")
