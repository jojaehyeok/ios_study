import UIKit

var greeting = "Hello, playground"

for i in 0...99{
    i
}

let a : Int = 100;
//a = 200; //에러 전체공간


var b : Int = 200;
b=300; // 성공 사용가능 공간
// safe Fast Expressive
// 상수 let const
// 변수 var
// int 64 uint 부호없는 64bit 정수 float 32bit 부동 double 64vbit 부동소수 bool any

// 부호 있는 정수
var SomeInt : Int = -100
SomeInt = 100
//SomeInt = 1.1 //에러

//부호 없는 정수
var someUint: UInt = 200
//someUint = -200 // 에러

// Float
var someFloat : Float = 1.1
someFloat = 1 // 에러 안남
print(someFloat) // 자동으로 1.0

var someBool: Bool = true
someBool = false

var someCharacter: Character = "가"
someCharacter = "A"
//someCharacter = "dsadas" //에러 문자열 X


// String
var someString : String = "안녕하세요"

// 타입추론
var number = 10;


// array 리스트
// dictionary 키와 값
// set 같은 데이터 타입의 값을 순서없이 저장하는 리스트

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 0)
numbers

//var names = [String]() 축약 형태1
//var names: [String] = [] 축약 형태2

//var dic : Dictionary<String, Int> = Dictionary<String,Int>()
var dic: [String: Int] = ["권태환": 1]
dic
dic["김철수"] = 3
dic["김민지"] = 5
dic

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic

var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(40)
set.insert(50)
set
set.remove(20)
set


// func 함수명(파라미터 : 데이터 타입) -> 반환 타입 {return 반환 값}

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)

func hello() -> String {
    return "hellow"
}

hello()

// 반환 값 없는 함수

func printname(){
    
}

func greeting(friend:String, me :String = "gunter") {
        print("Hello, \(friend)! I'm \(me)")
              
}
greeting(friend: "Albert")


func sendMessage(from myName : String, to name: String) -> String {
    return "hello \(name)! I'm \(myName)"
}
sendMessage(from: "gg", to: "gg")

func sendMessage(_ name:String) ->  String {
    return "hello \(name)"
}
sendMessage("권태완")

func sendMessage(me:String, friends: String...) ->  String {
    return "hello \(friends)! i'm \(me)"
}

sendMessage(me: "bliss", friends: "brad", "oliver", "mark")


//조건문
// if, switch, guard
/*
    if 조건신 {
    실행할 구문
    }
 */

let age = 12

if age < 19 {
    print("미성년자입니다.")
}

/*
    if 조건신 {
    실행할 구문
    } else{
    만족하지 않으면 해당 구문 실행
    }
 */

if age < 19 {
    print("미성년자")
} else{
    print("성년자")
}

/*
    if 조건신 {
    실행할 구문
    } else if 조건식 2 {
    조건식 2를 만족할때 실행
    } else{
        아무고토 만족 x
 }
 */

let anitmal = "cat"
if anitmal == "dog"{
    print("강아지 사료")
}else if anitmal == "cat"{
    print("고양이사료")
}else {
    print("해당하는 동물 사료 없음")
}

/*
    switch 비교 대상 {
    case 패턴1:
 // voxjs 1 dlfc
 case 패턴 2. 3
 // 패턴 2 3dl dlfclgkfEo
 default 비교 패턴 일치 하지 않을 떄
 */


let color = "green"

switch color {
case "blue":
    print("파랑")
 
case "green":
    print("그린")
    
case "yello":
    print("노랑")
    
default:
    print("찾는 색상 없음")
}

let temperature = 30

switch temperature {
case -20...9:
    print("겨울")
case 10...14:
    print("가을")
case 15...25:
    print("봄")
case 25...35:
    print("여름")
default:
    print("어중간")
}

//반복문 for in while repeat
/*
 for 루프상수 in 순회 대상 {
    실행구문 <코드 블럭>
 }
 */
for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]
for i in array {
    print(i)
}

// 무한루프
/*
 while 조건식 {
 // 실행할 구문
 }
 */


var number2 = 5

while number2 < 10 {
    number2 += 1;
}

number2

// 무조건 한번은 실행
var x = 6

repeat {
    x+=2
} while x < 5
            
print(x)

//옵셔널? 값이 있을 수 도 있고 없을 수도 있다.var name : String = ""   var name :String = nil << null 과 같음 0도 값 빈문자열도 값. var number:int? =nil 초기값을 주지 않으면 nil이다.
var name : String?

var optionalName: String? = "Gunter"
print(optionalName)

//var requiredName :String = optionalName 에러


// 옵셔널 바인딩. 명시적 해제 강제해재 비강제 해재(옵셔널 바인딩 ) 묵시적 해제 컴파일러에 대한 해재
// ! 를 붙이면 해지됨

var y: Int? = 3
print(y)
print(y!) // 포장지를 강제로 해제 "매우 위험"

// 안전하게 추출 장법 // 비 강제 해제
if let result = y {
    print(result)
} else{
    
}


func test(){
    let xy : Int? = 5
    guard let result = xy else {return}
    print(result)
}

test()

let value: Int? = 6

if value == 6 {
    print("value가 6")
}else{
    print("아닙니다")
}

let string = "12"
var stringtoint: Int! = Int(string)
// 묵시적 해제
print(stringtoint + 1)

// 클래스?                       구조체?
//
//struct 구조체 이름 {
//    프로퍼티(멤버 변수)와 메서드(멤버함수)
//}

struct User {
    var nickname : String
    var age : Int
    // 프로퍼티
    func infomation(){
        print("\(nickname) \(age)")
    }
    // 메서드
}

// 메모리에 생성 구조체의 실체

var user = User(nickname: "bliss", age: 23)

user.nickname
user.nickname = "ablert"
user.nickname
user.infomation()

//class 클래스 이름 {
//    프로퍼티와 메서드
//}

class Dog {
    var name : String = ""
    var age : Int = 0
    
    init() {
        // 인스턴스가 생성되면 호출
    }
    
    func introduce(){
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "코코"
dog.age = 3
dog.name
dog.age

dog.introduce()

//init 초기화 구문 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정.
//init(매개변수: 타입, ...){
//    // 프로퍼티 초기화
//    // 인스턴시 생성시 필요한 설정을 해주는 코드 작성
//}


class User2 {
    var nickname :String
    var age : Int
    
    init(nickname:String, age:Int){
        self.nickname = nickname
        self.age = age
    }
    
    init(age:Int){
        self.nickname = "ablert"
        self.age = age
    }
    
    deinit{
        print("deinit user")
    }
    // 생성자
}

var users = User2(nickname: "gunter", age: 23)
users.nickname
users.age


var user2 = User2(age: 27)
user2.age
user2.nickname

var user3 : User2? = User2(age: 23)
user3 = nil
// 생성자 파괴

// 저장 프로퍼티 연산 프로퍼티 타입 프로퍼티

struct Dog2 {
    // 저장 프로퍼티
    var name : String
    let gender : String
}

var dog2 = Dog2(name: "bliss", gender: "Male")
print(dog2)

dog2.name = "권태환"
//dog2.gender = "Female" // 상수이기 떄문에 변경 불가

let dog3 = Dog2(name: "gunter", gender: "male")
//dog2.name = "권태환" 상수로 선언해서 안됨

class Cat {
    var name : String
    let gender : String
    
    init(name : String, gender : String){
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)


// 연산 프로퍼티는 getter 와 setter를 이용하여 구현한다.
struct Stock {
    var averagePrice : Int
    var quantity : Int
    var purchasePrice : Int{
        get {
            return averagePrice * quantity
        }
        set(newPrice){
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)

stock.purchasePrice // get 안에 값이 나오게 됨
stock.purchasePrice = 3000
stock.averagePrice
// set 사용하고 get 하게 되면 읽기전용 set은 newValue의 매개변수를 같는다 newPricefmf 지우고 newValue로


class Account {
    //저장 프로퍼티
    var credit : Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue) 원으로 변경될 예정")
        }
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

// 타입 프로 퍼티

struct SomeStruct {
    static var storedTypeProperty = "Some" // 스토어
    static var computedTypeProperty: Int {
        return 1
    } // 컴퓨티드
}

// 이렇게 되면 생성자 없이도 호출 가능
SomeStruct.computedTypeProperty
SomeStruct.storedTypeProperty
SomeStruct.storedTypeProperty = "hello"
SomeStruct.storedTypeProperty



// class와 struct의 차이

// 프로퍼티, 메서드 , 내부값에 . 접근 생성자를 사용해 초기 상태 설정 , extension을 사용하여 확장 protocol을 채택하여 기능 설정가능
// 클래스 참조 타입 heep영역에 할당 arc로 메모리 관리, 상속이 가능, 타입캐스팅을 통해 런타임을에세 클래스 인스턴스 타입을 확인할 수 있을 deinit을 통해 생성자 해제 가능

class SomeClass {
    var count : Int = 0
    
}

struct Some2struct {
    var count: Int = 0
}

// 모든 변수에 영향을 줌 참조 타입

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count
// 구조체 값 타입, 구조체를 여러개의 변수를 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음(값 자체를 복사)

var struct1 = Some2struct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count

// 제 각각이고 값 타입이다 새로운 메모리를 할당하기 떄문에

// 상속 부모가 자식에게 재산을 물려주는 행위 상속 되었는 값의 변경되었을떄 추적, 감시자를 구현 가능
class Vehicle {
    var currentSpeed = 0.0 // final 하면 오버라이딩 할 수 없다.
    var desctiption : String {
        return "travel at \(currentSpeed) miles per hour"
    }
    func makeNoice(){
        print("speker on")
    }
}
class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed
// 부모 클래스의 프로퍼티와 메서드를 사용할 수 있음


// 오버라이딩 자신만의 기능을 사용할 수 있다. 실수를 인지 할 수 있음. 키워드를 사용하지 않으면 오류가 발생함.

class Train : Vehicle{
    override func makeNoice(){
        super.makeNoice() // 슈퍼클래스의 메서드를 호출
        print("choo choo")
    }
}

let train = Train()
train.makeNoice()

// 프로퍼티 오버라이딩

class Car:Vehicle {
    var gear = 1
    override var desctiption: String{
        return super.desctiption + " in gear \(gear)"
    }
}

let car = Car()

car.currentSpeed = 30.0
car.gear = 2
print(car.desctiption)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("automatic: \(automatic.desctiption)")

// 상수, 리드온리 willset didset을 설정할 수 없음.

// 타입 캐스팅 인스턴스 타입 확인 어떤 클래스의 해당 클래스 계층 구조의 슈퍼클래스와 서브 클래스 is로 클래스 타입이면 확인할 수 있다.
// 다운 캐스팅 하위클래스의 송 인스턴스를 참조 할 수 있슴. as? nil이 뜰 수 있음. as!성공확신 런타임에러 옵셔널

//for i in library {
//    if i is movie {
//        movieCount += 1
//    }else if i is Song {
//        songCount += 1
//    }
//} 타입 캐스팅

//for i in library {
//    if let movie = item as? Movie{
//        print("Movie: \(movie.name), dir. \(movie.desciption)")
//    }else if let song = item as? Song{
//        print("Song: \(song.name), by \(song,artist)")
//    }
//} 다운 캐스팅 movie의 item을 movie라는 상수에 가져 와서 나타냄.

// assert 특정 조건을 체크하고 조건이 성립되지 않으면 메세지를 출력함 디버깅 모드에서만 동작함 조건 검증을 위하여
// gurad 문 뭔가 검사하여 그다음에 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정 guard문에

//import Foundation

//var value = 0
//assert(value == 0)
//value = 2
//assert(valut == 0, "값이 0이 아닙니다.")

/*
 
 gurad 조건 else {
 // 조건이 false 이면 else 구문이 실행되고
 retun or throw or brack를 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */

func guradTest(value: Int?){
    guard let value = value else {return}
    print(value)
}

guradTest(value: 2) // 실행됨
guradTest(value: nil) // 실행되지 않음


// 프로토콜 특정 역활을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진.

/*
 protocol 이름 {
 
 
 }
 */

protocol someProtocol {
        
}

protocol someProtocol2 {
        
}

struct SomeStructrue : someProtocol, someProtocol2 {
    
}

/*
 class someclass : somsuper class, firstprotocol, anotherprotocol
 
 // 프로 퍼티를 요구 할 수 있다.
 */

protocol FirstProtocol{
    var name : Int {get set}
    var age : Int {get}
}

protocol AnotherProtocol {
    static var somtypeProperty : Int {get set}
}

protocol FullyNames{
    var fullName : String {get set}
    func prontFullName()
}

struct Person : FullyNames {
    // 프로토콜을 준수 해야함.
    var fullName: String
    func prontFullName(){
        print(fullName)
    }
}

protocol someprotocol3 {
    func sometypeMethod()
}

protocol someprotocol4 {
    init(someParameter : Int)
}

protocol someprotocol5 {
    init()
}

class Someclass5 : someprotocol5 {
    // 생성자 요구 사항을 준수하려면 이렇게 해야한다.
    required init(){
        // 생성 될때 초기화 되는 함수
    }
}

// extension  클래스, 구조체 , 프로토 타입 등에 익스텐션이 추가할 수 있음
// 연산 타입 연산 인스턴스 타입 메서드 인스턴스 메서드 이니셜라이저 서브스크립트 중첩 타입 특정 프로토콜 준수가능.

/*
 extention sometype {
    // 추가 기능
 }
 */

extension Int {
    var isEven : Bool{
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return self % 2 == 1
    }
}
// 거의 다 추가 가능
var num = 3
num.isOdd
num.isEven

// 타입에 정의되어 있는 프로퍼티에는 추가할 수 없고

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var str = "0"
str.convertToInt()

// 열거형 연관성이 있는 값을 모아 놓은 것을 말한다. 계절(봄 가을 여름 겨울)

enum CompassPoint : String {//타입지정{
    // 컴퍼스 포인트라는 열거형
    case north = "북", south = "남" // 북 한줄로 나열 가능
//    case south // 남
    case east = "동" // 동
    case west = "서" // 서
}// 대문자로 시작해야됨

var direction = CompassPoint.east
direction = .west // 컴파일이 유추 해줌

//swich 구문과 실행시 좋다

switch direction {
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
}

let diretion2 = CompassPoint(rawValue: "남")

// iot에 많이 쓰일듯.

enum PhoneError {
    case unknown
    // 연관 값을 추가하려면 ()
    case batteryLow(String)
    
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch error {
case.batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}

// 옵셔널 체이닝 옵셔널에 속해있는 nil일지도 모르는 프로퍼티 메서드 서브스크립션등을 가져오거나 호출 할때 사용할 수 있는 일련의 과정

struct Developer {
    let name : String
    
}

struct Company {
    let name : String
    var developer : Developer?
}

var developer = Developer(name : "han")
var company = Company(name: "Bliss", developer: developer)

print(company.developer)
print(company.developer?.name)
print(company.developer!.name) //unwapping
// 옵셔널 체이닝

// try-catch 프로그램 내에서 에러가 발생하는 과정 하는 경우 throwing 발생 catching 감지 propagating 전파 manipulating 조작
// 사용자에게 어떤 오류가 발생 됬는지 알 수 있음 - 에러 처리

enum PhoneError1 : Error {
    case unknown
    case batteryLow(battaylevel: Int)
}

// throw 구문으로 에러 발생
//throw PhoneError1.batteryLow(battaylevel: 20)
// 전파하는 방법 Throws라는 걸 해주시면 됨, 오류가 발생하지 않을 걸 확신


func checkPhoneBatteryStatus(batteryLever : Int) throws -> String {
    // 쓰로잉 함수
    // 반환 값을 자석
    guard batteryLever != -1 else {throw PhoneError1.unknown}
    guard batteryLever >= 20 else {throw PhoneError1.batteryLow(battaylevel: 20)}
    return "배터리 상태가 정상입니다."
}

//
//do{
//    try 오류 발생 가능 코드 {
//
//    }catch 오류 패턴 {
//        처리코드
//    }
//}

do {
    try checkPhoneBatteryStatus(batteryLever: -1)
} catch PhoneError1.unknown{
    print("알 수 없는 에러")
} catch PhoneError1.batteryLow(let batteryLebel){
    print("배터리 전원 부족 남은 배터리 : \(batteryLebel)")
} catch {
    print("그 외 오류 발생: \(error)")
}

let status = try? checkPhoneBatteryStatus(batteryLever: 30)
print(status)

// 확신
let status2 = try! checkPhoneBatteryStatus(batteryLever: 30)
print(status2)

// 클로저 코드에서 전달할 수 있는 독립 기능 블록 1급 객체 전달인자로 보낼 수 있고 변수 상수 등으로 저장하거나 전달할 수 있거나 익명함수를 지칭한다. 네임드 클로저 언네임드 클로저를 포함하지만

/*
{
    (매개변수) -> 리턴 타입 in
    실행구문
}
*/

//let hello = { () -> () in
//    print("hellow")
//}
//
//hello()
//
//let hello2 = {(name: String) -> String in
//    return "hello, \(name)"
//}
//
//hello2("Gunter")
//
//func doSomething(closure : () -> ()){
//    closure()
//}
//
//doSomething(closure: {() -> () in
//    print("hello")
//})
//
////클로저를 반환
//func doSomething2 () -> () -> () {
//    return {() -> () in
//        print("hello4")
//    }
//}
//
//doSomething2()()
//
////후행 클로저 맨 마지막만 사용할 수 있다
//
//doSomething(){
//    print("hello2")
//}
//
//// 가로 생략가능
//doSomething{
//    print("hello3")
//}
//
//func doSomething3(sucess: ()-> (), faie: () ->()){
//
//}

//엔터 두번
//doSomething3 {
//    <#code#>
//} faie: {
//    <#code#>
//}

//func dosomething4(closure : (Int, Int, Int) -> Int) {
//    closure(1,2,3)
//}
//
//func dosomething4(closure: { (a, b, c) in
//        return a+b+c
//})
//
//func dosomething4(closure: {
//    return $0+$1+$2
//})
//
//
//func dosomething4() {
//    return $0+$1+$2
//})
//
//func dosomething4 {
//    return $0+$1+$2
//})

// 고차 함수에 대해 알아보기 : 다른 함수를 전달인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수 map, fillter, reduce 모두 콜렉션 타입

// map

let numbers2 = [0,1,2,3]
let mapArray = numbers.map{(numbers2) -> Int in
    return numbers2 * 2
}
print("map \(mapArray)")

// fillter

let intArray = [10,5,20,13,4]
let filterArray = intArray.filter{ $0 > 5}
print("filter \(filterArray)")

// reduce

let somarray3 = [1,2,3,4,5]
let reduceResult = somarray3.reduce(2){
    (Result: Int, elelemt : Int) -> Int in
    print("\(Result) + \(elelemt) ")
    return Result + elelemt
}
print("reduce, \(reduceResult)")
