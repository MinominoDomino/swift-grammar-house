//: Playground - noun: a place where people can play

import UIKit

/* 배열 선언 */
var FriendsName1: Array<String> = Array<String>()
var FriendsName2: Array<String> = ["KIM"]
var FriendsName3: Array<String> = []
var FriendsName4: [String] = ["LEE"]

var FriendsAge: [Int] = []
var FriendsName: [String] = ["KIM", "LEE", "PARK"]


/* 배열 검사 */
//isEmpty   ->  배열이 비어있는지 확인
print(FriendsAge.isEmpty)        //true
print(FriendsName.isEmpty)        //false

//count     ->  배열 요수 갯수 확인
print(FriendsName.count)        //3

/* 배열 접근 */
// first    -> 배열의 가장 첫 번째 값에 접근
print(FriendsName.first!)       //KIM

// last     -> 배열의 가장 마지막 값에 접근
print(FriendsName.last!)        //PARK

// index(of:)   ->  배열의 위치를 가져옴
print(FriendsName.index(of: "LEE")!)        //1

// append(_:)   ->  배열 마지막에 값을 추가
FriendsName.append("CHOI")
print(FriendsName)      //["KIM", "LEE", "PARK", "CHOI"]

// insert(_:at:)    ->  특정 위치에 값을 추가
FriendsName.insert("YOUN", at: 3)
print(FriendsName)     //["KIM", "LEE", "PARK", "YOUN", "CHOI"]


// remove(_:)       ->  특정 위치의 값을 삭제
FriendsName.remove(at: 1)
print(FriendsName)      //["KIM", "PARK", "YOUN", "CHOI"]

// removeFirst()    -> 가장 첫 번째 값 삭제
FriendsName.removeFirst()
print(FriendsName)      //["PARK", "YOUN", "CHOI"]

// removeLast()     -> 가장 마지막 값 삭제
FriendsName.removeLast()
print(FriendsName)      //["PARK", "YOUN"]







