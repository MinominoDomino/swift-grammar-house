import Foundation

/* control flow
 제어문은 특정 조건에 따라 기능을 제어하는 기능입니다.
 제어문에는 `for-in`, `while`, `switch`, `if`가 있습니다.
 하나씩 알아봅시다.
 [Apple swift document - Control Flow](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
 */

/* for-in 루프 */
/*
 가장 기본적으로 배열에 담긴 자료를 순차적으로 순회를 합니다.
 - 원형 표현 `for [임시변수명] In [배열명] { }`
 */

// "KIM", "LEE", "PARK"이 들어있는 배열 names입니다.
var names: [String] = ["KIM", "LEE", "PARK"]

for name in names {
    print("name is \(name)")
}
//name is KIM
//name is LEE
//name is PARK

// 이번엔 딕셔너리에 담긴 자료를 순차적으로 순회합니다.
// ["KIM":10, "LEE":20, "PARK":30]이 들어있는 딕셔너리 타입의 personInfo입니다.
var personInfo: [String: Int] = ["KIM":10, "LEE":20, "PARK":30]

for (name, age) in personInfo {
    print("name is \(name) and age is \(age)")
}
//name is KIM and age is 10
//name is LEE and age is 20
//name is PARK and age is 30

// 숫자 범위를 정해서 순회를 합니다.
// for [임시변수] in [from...to]
for number in 5...10 {
    print(number)   //5 6 7 8 9 10
}

// 범위 연사자를 사용해서 순회를 합니다.
var clock: Int = 13
for time in 1..<clock {
    print(time) //1 2 3 4 5 6 7 8 9 10 11 12
}

// stride(from:to:through) 함수를 사용해서 순회를 할 수 있습니다.
// stride함수는 from값에서 to값까지 through만큼 떨어지면서 시퀀스를 만드는 함수입니다.
for value in stride(from: 0, through: 6, by: 2) {
    print(value)    //0 2 4 6
}

// 값 제어없이 단순반복경우, 임시변수를 `_`로 생략할 수 있고 성능을 더 높일 수 있습니다.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")  //3 to the power of 10 is 59049

/* while 루프 */
/*
 while은 특정 조건이 만족하는 동안 루프를 실행하고 조건이 만족되지 않으면 루프를 빠져나와요.
 기본 while과 repeat-while 두 종류의 루프가 있습니다.
 repeat-while은 기본 while과 다르게 먼저 루프를 실행하고 조건 검사가 이루워집니다.
 가장 기본적인 예제를 해볼게요.
 - 원형 표현 `while [조건] { }`
 - 원형 표현 `repeat { } while [조건]
 */

var startTime: Int = 0
var endTime: Int = 10

while startTime < endTime {
    startTime += 1
}
print("startTime is \(startTime)")  //startTime is 10

repeat {
    startTime += 1
} while startTime < endTime
print("startTime is \(startTime)")  //startTime is 11
// repeat-while은 무조건 루프를 먼저 실행하고 검사를 하게되어 startTime이 11로 증가했어요.


/* if else */
/*
 if else는 특정 조건이 만족하는지 확인하여 조건이 참이라면 블록을 실행하고 거짓이라면 실행하지 않습니다.
 **swift에서 조건식의 타입은 bool형이여야 합니다.**
 아래 4가지 표현에 대한 간단한 예제를 보겠습니다.
 
 - `if [조건식] { }`
 - `if [조건식] { } else { }`
 - `if [조건식] { } else if [조건식] { }`
 - `if [조건식] { } else if [조건식] { } else { }`
 */

var testSuccess: Int = 60
var myScore: Int = 55
var friendScore: Int = 70

if myScore < testSuccess {
    print("test Fail")
}

if myScore > testSuccess {
    print("test Success")
} else {
    print("test Fail")
}

if myScore > testSuccess {
    print("test Success")
} else if myScore < testSuccess {
    print("test Fail")
}

myScore = 60
if myScore > testSuccess {
    print("test Success")
} else if myScore < testSuccess {
    print("test Fail")
} else {
    print("same Score")
}


/* switch case */
/*
 switch case는 입력 값에 대해 각 case별로 비교하여 조건에 만족하는 case의 블록을 실행합니다.
 다른 언어의 switch문에서 break키워드로 구문을 종료했지만, swift에서는 break키워드 없이도 case 내부의 코드를 모두 실행하면 구문이 종료됩니다.
 이로인해 break 키워드가 없어 다른 case를 의도하지 않게 실행되는 것을 방지할 수 있습니다.
 단, case의 블록 기능은 작성해주셔야합니다.
 간단한 예제를 보겠습니다.
 */

var score: Int = 55
switch score {
case 100:   //100점 이라면
    print("A Grade")
case 80...99:    //80~99점 이라면
    print("B Grade")
case 60..<80:   //60~79점 이라면
    print("C Grade")
case 55,56,57,58,59:    //55~59점 이라면
    print("D Grade")
default:
    print("unknow")
}
/*
 첫 번째 case처럼 하나의 값을 지정
 두 번째 case처럼 범위 값을 지정
 세 번째 case처럼 범위연산자를 지정
 네 번째 case처럼 여러 값을 지정
 또한, 다음과 같이 튜플과 값을 바인딩할수있어요.
 */

var currentPoint = (1, 20)
switch currentPoint {
case (0, 0):
    print("my current point is 0, 0")
case (0...2, 0...5):
    print("my current point is 0~2, 0~5")
case (_, 0):
    print("my current point is N, 0")
case (0, _):
    print("my current point is 0, N")
case (let x, 1):
    print("my current point is \(x), 1")
case (1, let y):
    print("my current point is 1, \(y)")
case (_, _):
    print("notting")
}

/* case에 where 조건을 사용할 수 있어요.*/
var myPoint = (1, 2)
switch myPoint {
case let (x, y) where x == y:
    print("x and y is same value")
case let (x, y) where x != y:
    print("x and y is not same value")
case (_, _):
    print("notting")
}

/* 제어문에는 실행되는 코드의 흐름을 바꾸기 위해 제어 전송 구문을 제공해요.
   하나씩 알아보죠.
 */

/* - continue
    continue는 현재 블록을 종료하고 다음 블록을 실행합니다.
    알 수 없는 문자열에서 특정 문자를 제거하여 해독하는 예제입니다.
 */

var quizString: String = "s12u4cc3e9s11s"
var quizAnswer: String = ""
var removeChar: [Character] = ["1", "2", "3", "4", "9"]

for char in quizString {
    if(removeChar.contains(char)) {
        continue
    } else {
        quizAnswer.append(char)
    }
}
print(quizAnswer)

/* - break
 break는 제어문의 실행을 종료합니다.
 위 예제에서 'c'라는 문자는 위험하여 c를 제외하고 이어나갑니다.
 */

quizAnswer.removeAll()  //quizAnswer를 초기화합니다.
for char in quizString {
    switch char {
    case "c":
        break
    case "1"..."9":
        continue
    case _:
        quizAnswer.append(char)
    }
}
print(quizAnswer)

/* - fallthrough
 fallthrough는 자동으로 break되는걸 무시하고 다음 case문을 게속 실행합니다.
 다음 예제는 선택한 숫자를 알려줍니다.5를 선택했지만 case 6도 같이 실행됩니다.
*/
var selectedNumber: Int = 5
switch selectedNumber {
case 1...4:
    print("selected number is within 1~4")
case 5:
    print("selected number is 5")
    fallthrough
case 6:
    print("selected number is 6")
default:
    print("unknow")
}










