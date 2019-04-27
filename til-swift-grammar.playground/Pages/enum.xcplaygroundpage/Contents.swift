import Foundation
/* enum
 열거형은 연관되어있는 여러 데이터를 하나의 묶음으로 저장하는 컬렉션 타입입니다.
 키워드는 `enum`를 사용해요
 열거형은 다른 타입들과 다르게 추가/수정이 동적으로 불가능해요.
 소스에 선언된 상태로 사용된답니다.

 그리고 배열은 데이터의 순서를 보장하지만 세트에서는 데이터의 순서가 랜덤해요.
 예를들어 배열[1, 2, 3]과 세트[1, 2, 3]이 있을때 새로운 값인 4와 5를 추가하면
 배열은 [1, 2, 3, 4, 5]이지만, 세트는 [2, 3, 1, 4, 5]이렇게 랜덤하게 구성됩니다!
 
 이러한 차이점 두개는 세트에서 가장 중요한 내용이에요.
 
 https://developer.apple.com/documentation/swift/set
 */

/* 세트 선언 */
/*
 인피니티스톤 세트를 만들어보겠습니다.
 인피니티스톤은 딱 6개의 스톤으로 구성되어 있죠? 마블 좋아하시는 분들은 다 아실거에요ㅎㅎㅎㅎㅎ
 그리고 각 스톤은 무조건 하나만 있죠!! 그럼 세트를 배우는 예제로 딱인 것 같네요!
 어서 만들어봅시다.
 */

//var infinityStone: Set<String> = Set<String>()
var infinityStone: Set<String> = ["Reality", "Soul", "Time"]    //3개의 스톤을 모았어요.

/* 세트 메서드 */
// -`isEmpty`는 세트가 비어 있는지 확인합니다.
print(infinityStone.isEmpty)

// -`count`는 세트의 개수를 알려줍니다.
print(infinityStone.count)

// -`contains`는 특정 값이 있는지 확인합니다.
print(infinityStone.contains("Soul"))

// -`insert(_:)`는 세트에 값을 추가합니다.
infinityStone.insert("Mind")
print(infinityStone)

// -`remove(_:)`는 세트에서 값을 삭제합니다.
infinityStone.insert("Time")
print(infinityStone)

// -`remove(_:)`는 세트에서 값을 삭제합니다.
infinityStone.removeFirst()
print(infinityStone)

// -`popFirst()`는 세트에서 값을 삭제합니다.
// removeFirst()와 다른점은 세트가 비어있을때 removeFirst는 에러이지만 popFirst는 nil을 반환합니다.
infinityStone.removeAll()
infinityStone.popFirst()
print(infinityStone)

/* 세트의 특징 */
var arrayData: [Int] = [1, 2, 3]
var setData: Set<Int> = [1, 2, 3]
for number in [4, 5, 2] {
    arrayData.append(number)
    setData.insert(number)
}
print("array is \(arrayData)")
print("set is \(setData)")
//위 코드를 돌려보면 배열은 값도 순서대로 들어있고 갯수도 6개들어있지만, 세트는 순서도 뒤죽박죽 갯수도 2라는 값이 중복되어서 5개만 있죠?

/* 세트의 활용 */
//세트는 교집합, 합집합, 여집합, 차집합 등 집합 계산에 유용하게 쓸 수 있어요!
let myClassTable: Set<String> = ["kor", "eng", "math", "cs"]
let girlFriendClassTable: Set<String> = ["kor", "art", "music", "cs"]

//교집합
var commonClass: Set<String> = myClassTable.intersection(girlFriendClassTable)
print(commonClass)

//합집합
var totalClass: Set<String> = myClassTable.union(girlFriendClassTable)
print(totalClass)

//여집합
var notCommonClass: Set<String> = myClassTable.symmetricDifference(girlFriendClassTable)
print(notCommonClass)

//차집합
var girFriendNotHaveClass: Set<String> = myClassTable.subtracting(girlFriendClassTable)
print(girFriendNotHaveClass)










