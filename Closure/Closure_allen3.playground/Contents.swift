import UIKit

/*
let aClosureType = { () -> () in
    print("안녕")
}
aClosureType()

func aFunction1(_ param: String) -> String {
    return param + "!"
}

func aFunction2(name: String) -> String {
    return name + "?!??"
}

// 함수를 변수에 할당가능(변수가 함수를 가리키게 됨)
var a: (String) -> String = aFunction1
a("안녕")

a = aFunction2

a("Bonjour")

a("Swift")
a("Steve Jobs")


func someFunction(num: Int) -> String{
    let strNum = print("number: \(num)")
    print(type(of: strNum))
    return ""
}

someFunction(num: 3)

/*
 # 2개 이상의 클로저
 */

func multiple(a: Int, b: Int) -> Int {
    let result = a * b
    return result
}

print(multiple(a: 34, b: 2))

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
*/

func performGCDClosure(value: @escaping (String) -> ()) {
    var firstValue = "Nat"
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        value(firstValue)
    }
}

performGCDClosure { 문자열 in
    print("문자열: \(문자열)")
}
