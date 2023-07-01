import Cocoa

//var greeting = "Hello, \"playground\""
//print(greeting)
//print(greeting.hasPrefix("Hello"))
//
//let reallyBig = 1_00__00___00____00
//print(reallyBig)
//
//let number = 120
//print(number.isMultiple(of: 3))
//
//let dNumber = 0.1 + 0.2
//print(dNumber) // 0.30000000000000004
//
//// Checkpoint 1
//let cDegree = 20
//let fDegree = cDegree * 9 / 5 + 32
//print("Temperature : \(fDegree)°F, \(cDegree)°C")
//
//
//let presidents = ["Bush", "Obama", "Trump", "Biden"]
//print(presidents)
//let reversedPresidents = presidents.reversed()
//print(presidents.sorted())
//
//// Checkpoint 2
//let commonNames = ["Michael", "Tom", "Jessica", "Sandy", "Michael"]
//print(commonNames.count)
//print(Set(commonNames).count)
//
//
//var username = ""
//if username.isEmpty {   //username.count 보다 훨씬 빠르게 처리
//    username = "Anonymous"
//}
//
//enum Weather {
//    case sun, rain, wind, snow, unknown
//}
//let forecast = Weather.sun
//
//switch forecast {
//case .sun:
//    print("It's a sunny day.")
//case .rain:
//    print("It's a rainy day.")
//default:
//    print("I don't like this weather.")
//}
//
//let age = 18
//let canVote = age >= 18 ? "Yes" : "No"  // WTF
//
////continue : 현재 loop 스킵
////break : 모든 루프 스킵
//
//// Checkpoint 3
//for num in 1...100 {
//    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
//        print("FizzBuzz")
//    } else if num.isMultiple(of: 3) {
//        print("Fizz")
//    } else if num.isMultiple(of: 5) {
//        print("Buzz")
//    } else { print(num) }
//}
//
//
//func pythagoras(a: Double, b: Double) -> Double {
//    sqrt(a * a + b * b) // return 생략
//}
//
////func getUser() -> (firstName: String, lastName: String) {
////    (firstName: "Taylor", lastName: "Swift")  // tuple
////}
//
////func getUser() -> (String, String) {
////    ("Taylor", "Swift")
////}
//
////let user = getUser()
////print("Name: \(user.0) \(user.1)")
//
//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
//}
//
//let (firstName, lastName) = getUser()
//print("Name: \(firstName) \(lastName)")
//
//var characters = [1, 2, 3]
//characters.removeAll(keepingCapacity: true) // array를 지우지만 메모리 공간은 남길때
//
//// 오류처리
//
//enum PasswordError: Error {
//    case short, obvious
//}
//
//func checkPassword(_ password: String) throws -> String {
//    if password.count < 5 {
//        throw PasswordError.short
//    }
//
//    if password == "12345" {
//        throw PasswordError.obvious
//    }
//
//    if password.count < 8 {
//        return "OK"
//    } else if password.count < 10 {
//        return "Good"
//    } else {
//        return "Excellent"
//    }
//}
//
//let string = "123456"
//
//do {
//    let result = try checkPassword(string)
//    print("Password rating: \(result)")
//} catch {
//    print("There was an error.")
//}
//
//// Checkpoint 4
//
//enum ErrorType: Error {
//    case tooLow, tooHigh, noRoot
//}
//
//func findSqrt(of number: Int) throws -> Int {
//    if number < 1 {
//        throw ErrorType.tooLow
//    } else if number > 10000 {
//        throw ErrorType.tooHigh
//    }
//    for root in 1...100 {
//        if root * root == number {
//            return root
//        }
//    }
//    throw ErrorType.noRoot
//}
//
//do {
//    try print(findSqrt(of: 25))
//} catch ErrorType.tooLow {
//    print("숫자가 너무 작습니다.")
//} catch ErrorType.tooHigh {
//    print("숫자가 너무 높습니다.")
//} catch ErrorType.noRoot {
//    print("루트를 찾을 수 없습니다.")
//}
//
////
//let sayHello = { (name: String) -> String in
//    "Hi \(name)!"
//}
//sayHello("Taylor")
//
//
//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}
//
////let captainFirstTeam = team.sorted(by: captainFirstSorted)
////let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
////    if name1 == "Suzanne" {
////        return true
////    } else if name2 == "Suzanne" {
////        return false
////    }
////
////    return name1 < name2
////})
//
//let captainFirstTeam = team.sorted {
//    if $0 == "Suzanne" {
//        return true
//    } else if $1 == "Suzanne" {
//        return false
//    }
//
//    return $0 < $1
//}
//
//print(captainFirstTeam)
//
//let tOnly = team.filter { $0.hasPrefix("T")}
//print(tOnly)
//
//let uppercaseTeam = team.map { $0.uppercased() }
//print(uppercaseTeam)
//
//func makeArray(size: Int, using generator: () -> Int) -> [Int] {
//    var numbers = [Int]()
//
//    for _ in 0..<size {
//        let newNumber = generator()
//        numbers.append(newNumber)
//    }
//
//    return numbers
//}
//print(makeArray(size: 5) { Int.random(in: 1...10) })
//
//// Checkpoint 5
//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//
//var outputNumbers = luckyNumbers.filter { !$0.isMultiple(of: 2) }.sorted()
//
//outputNumbers.map { print("\($0) is a lucky number") }
//
//
////
//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)
//
//// Checkpoint 6
//struct Car {
//    let model: String
//    let numSeat: Int
//    private(set) var currentGear: Int
//
//    enum Gear {
//        case up, down
//    }
//
//    mutating func changeGear(to: Gear) {
//        switch to {
//        case .up:
//            if currentGear < 10 {
//                currentGear += 1
//            } else {
//                print("Cannot change the gear above 10")
//            }
//        case .down:
//            if currentGear > 1 {
//                currentGear -= 1
//            } else {
//                print("Cannot change the gear below 1")
//            }
//        }
//    }
//
//    init(model: String, numSeat: Int) {
//        self.model = model
//        self.numSeat = numSeat
//        self.currentGear = 1
//    }
//}
//
//var sportsCar = Car(model: "Porsche", numSeat: 2)
//
//print("Current Gear is \(sportsCar.currentGear)")
//sportsCar.changeGear(to: .down)
//print("Current Gear is \(sportsCar.currentGear)")
//sportsCar.changeGear(to: .up)
//print("Current Gear is \(sportsCar.currentGear)")

//

//class Vehicle {
//    let isElectric: Bool
//
//    init(isElectric: Bool) {
//        self.isElectric = isElectric
//    }
//}
//
//class Car: Vehicle {
//    let isConvertible: Bool
//
//    init(isElectric: Bool ,isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric)
//    }
//}
//
//let ferrari = Car(isElectric: false, isConvertible: true)
//
//class User {
//    let id: Int
//
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
////for i in 1...3 {
////    let user = User(id: i)
////    print("User \(user.id): I'm in control!")
////}
//
//var users = [User]()
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear!")
//
//
//// Checkpoint 7
//class Animal {
//    var legs: Int
//
//    init(legs: Int) {
//        self.legs = legs
//    }
//}
//
//class Dog: Animal {
//    func speak() { print("Woof, woof") }
//
//    convenience init() {
//        self.init(legs: 4)
//    }
//}
//
//class Corgi: Dog {
//    override func speak() { print("Woofi, woofi")
//    }
//}
//
//class Poodle: Dog {
//    override func speak() { print("Woofle, woofle")
//    }
//}
//
//
//class Cat: Animal {
//    var isTame: Bool
//
//    func speak() { print("Meow, meow") }
//
//    init(legs: Int, isTame: Bool) {
//        self.isTame = isTame
//        super.init(legs: legs)
//    }
//
//    convenience init(isTame: Bool) {
//        self.init(legs: 4, isTame: isTame)
//    }
//
//    convenience init() {
//        self.init(legs: 4, isTame: false)
//    }
//}
//
//class Persian: Cat {
//    override func speak() { print("Meowa, meowa") }
//}
//
//class Lion: Cat {
//    override func speak() { print("Growl, growl") }
//}
//
//let liger = Lion()
//print(liger.isTame)
//liger.speak()
//print(liger.legs)

//
protocol Vehicle {
    var name: String { get } // 계산
    var currentPassengers: Int { get set } // 저장 프로퍼티
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Bicycle: Vehicle {
//    var name = "Car" // let name = "Car"
    var name: String = "Car"
    var currentPassengers: Int = 2 
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}


var bike = Bicycle()
bike.name = "gucci"
//
//func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
//    for vehicle in vehicles {
//        let estimate = vehicle.estimateTime(for: distance)
//        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
//    }
//}
//
//getTravelEstimates(using: [bike], distance: 150)
//
