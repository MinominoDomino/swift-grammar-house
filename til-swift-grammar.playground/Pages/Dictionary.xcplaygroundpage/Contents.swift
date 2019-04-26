import Foundation
/*
 딕셔너리는 요소의 순서에 상관 없이 <key:value>로 구성되는 컬렉션 타입이다.
 key는 value와 1:1로 쌍을 이루며 key는 딕셔너리에서 유일한 값이여야 한다.
 같은 key의 값을 두번 쓸 수 없습니다.
 존재하지 않는 key로 접근 시 배열과 다르게 오류는 없지만 nil를 반환합니다.
 
 https://developer.apple.com/documentation/swift/dictionary
 */

/* 딕셔너리 선언 */
//var responseMessage: Dictionary<Int, String> = Dictionary<Int, String>()
//var responseMessage: [Int: String] = [Int: String]()
//var responseMessage: [Int: String] = [:]

/* 별칭 사용 */
typealias responseMessageInfo = [Int: String]
//var responseMessage: responseMessageInfo = responseMessageInfo()

var responseMessage: responseMessageInfo = [200:"ok"]
var test: responseMessageInfo = [:]


/* 딕셔너리 메서드 */

print(responseMessage.isEmpty)

print(responseMessage.count)

// 값 추가
responseMessage[403] = "Access forbidden"
responseMessage[404] = "File not found"
responseMessage[500] = "Internal server error"
print(responseMessage)

// 특정 키의 값 확인
print(responseMessage[404]!)

// 없는 키의 값 확인
print(responseMessage[600])

//특정 키의 값 제거
responseMessage.removeValue(forKey: 403)
print(responseMessage)



let httpResponseCodes = [200, 403, 301]
for code in httpResponseCodes {
    if let message: String = responseMessage[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown response \(code)")
    }
}












