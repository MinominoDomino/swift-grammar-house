import Foundation
/* enum
 열거형은 연관되어있는 여러 데이터를 하나의 묶음으로 저장하는 컬렉션 타입입니다.
 키워드는 `enum`를 사용해요
 열거형은 다른 타입들과 다르게 추가/수정이 동적으로 불가능해요.
 소스에 선언된 상태로 사용된답니다.
 기존 C에서 사용하던 열거형과는 다르게 정수형이 아닌 String, Char, Float 등 다른 값들을 사용할 수 있어요
 https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
 */

/* 열거형 선언 */
/*
 상,하,좌,우로 움직이는 케릭터의 움직임을 표현하는 열거형 타입을 만들어볼게요.
 어서 만들어봅시다.
 */

enum MoveInfoEx {
    case up
    case down
    case left
    case right
}

enum MoveInfo { case up, down, left, right}    // case를 하나만 쓰고 ,로 구분하여 한번에 표현

/*
 위 처럼 MoveInfo라는 하나의 사용자 타입을 만들수있어요.
 그럼 사용자 움직임을 가지는 변수를 MoveInfo타입으로 만들어봅시다.
 */

var playerMove: MoveInfo

/* 열거형 활용 */
/*
 케릭터의 움직임을 지니는 MoveInfo타입과 이 타입으로 만들어진 변수 playerMove를 가지고 실제 우리가 케릭터를 움직였을때!
 케릭터가 어디로 움직였는지 알아야겠죠?
 열거형은 보통 `switch case`와 같이 활용됩니다.
 예제를 볼게요!
 */
playerMove = .left  //왼쪽으로 움직임
switch playerMove {
case .up:
    print("player is move to up")
case .down:
    print("player is move to down")
case .left:
    print("player is move to left")     //출력
case .right:
    print("player is move to right")
}

/* 열거형 특징 */
/*
 - 원시 값(Raw Values)
 각 열거형의 항목들은 하나의 값이지만 각 항목들이 `원시 값`을 가질 수 있습니다.
 "무슨말인가요...?"
 직접 보고 느끼는게 빠를거에요
 숫자를 말하면 무슨 숫자인지 알려주는 예제를 만들어 볼게요.
 */

enum NumberSound: Int {
    case one = 1, two = 2, three = 3
}

var number: NumberSound = .two
print(number.rawValue)  //2


/*
 - 연관 값(Associated Values)
 각 case 항목이 자신과 연관된 값을 가질 수 있습니다.
 항목뒤에 소괄호로 표현하고 custom type의 추가적인 정보를 저장하는 거죠
 
 kiosk를 주문 받는 예제를 만들어 볼게요.
 먼저, kiosk타입으로 enum를 선언하고 각 항목은 브랜드명으로 하고 **브랜드마다 설치 위치와 갯수 그리고 버전**을 받겠습니다.
 */
enum kiosk {
    case macdor(area: String, count: Int, version: Float)
    case starbuk(String, Int, Float)
}

// 키오스크를 주문할게요 **맥도르 서울지점에 1.0버전 3대를 주문**해봅시다.
var kioskOrder: kiosk = .macdor(area:"Seoul", count:3, version: 1.0)

// 주문을 확인해봅시다.
switch kioskOrder {
case .macdor(let area, let count, let version):
    print("macdor : \(area)Store, \(count)EA, \(version)Type")
case .starbuk(let area, let count, let version):
    print("starbuk : \(area)Store, \(count)EA, \(version)Type")
}

