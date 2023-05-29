import Foundation

//Задание 1
func sum(summ: [Int]) -> Int {
    if summ.count == 1 { summ [0] + 0
        return summ [0]
    }
    if summ.count == 0 { print(0)
        return 0
    }
    var summary = summ [0] + summ [1]
        return summary
    }
print(sum(summ: [-1, -2]))


//Задание 2
func firstAndLastFunc (array iAmArray: [Int]) -> [Int]? {
    guard iAmArray.count > 2 else {return nil}
    return [iAmArray[0], iAmArray [iAmArray.count - 1]] }
firstAndLastFunc (array: [1,2,6])
firstAndLastFunc (array: [6])
firstAndLastFunc (array: [])


//Задание 3
var dates = [Date]()
let n = 4
for _ in 0 ..< n {
dates.append(Date(timeIntervalSinceNow: TimeInterval(Int.random(in: -1000000000 ... 1000000000))))
}
for date in dates {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy- MM-dd HH:mm:ss"
    let someDateTime = formatter.string(from: date)
    print(someDateTime)
}


//Задание 4
//map
let m = 4
var datesMap = [Date]()
for _ in 0 ..< m {
    datesMap.append(Date(timeIntervalSinceNow: TimeInterval(Int.random(in: -1000000000 ... 1000000000))))
}
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let dateString = datesMap.map { "\(dateFormatter.string(from: $0))"}
print (dateString)
    
//forEach
let k = 3
var datesMap2: [Date] = []
for _ in 0 ..< k {
    datesMap2.append (Date(timeIntervalSinceNow: TimeInterval(Int.random(in: -1000000000 ... 1000000000)))) }
var datesFromString2: [String] = []
    let funcForEach = {
        let dateFormatter = DateFormatter ()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString2 = dateFormatter.string (from: $0)
        datesFromString2.append(dateString2)
        
    }
    datesMap2.forEach(funcForEach)
print (datesFromString2)


//задание 5
var fruits: Set<String> = []
fruits = ["orange", "apple", "banana", "grapefruit"]
var redFood: Set = ["apple", "tomato", "grapefruit", "strawberry"]
var redFruits = fruits.intersection (redFood)
var redProduct = redFood.subtracting (redFruits)
var foods = (fruits.union (redFood)).subtracting (redFruits)

//Задание 6*
let nambersFromMyHead = [4,5,5,1,6,6,8]
func removeDuplicateElements (numbers: [Int]) -> [Int] {
    return Array(Set(nambersFromMyHead))
}
print(removeDuplicateElements(numbers: nambersFromMyHead  ))
