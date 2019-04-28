import Foundation

// ["KIM":10, "LEE":20, "PARK":30]이 들어있는 딕셔너리 타입의 personInfo입니다.
var personInfo: [String: Int] = ["KIM":10, "LEE":20, "PARK":30]

for (name, age) in personInfo {
    print("name is \(name) and age is \(age)")
}
//name is KIM and age is 10
//name is LEE and age is 20
//name is PARK and age is 30
