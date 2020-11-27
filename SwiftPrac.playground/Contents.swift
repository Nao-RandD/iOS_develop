import UIKit

var str = "Hello, playground"

print(str)

for i in 0..<10{
    print(i)
}

var arr : [Int] = []
// ... なら以下、..< なら未満を指す
for i in 0...10{
    // append()でカッコ内の要素を配列に追加する
    arr.append(i)
}

class Dog {
    static var name = "shiro"

    static func bark(){
        print("Bow-wow-wow!");
    }
}

Dog.bark()
print(Dog.name)

let pochi = Dog()
Dog.name = "pochi"
print(Dog.name)
//pochi.bark()

let hachi = Dog()
print()

enum Signal{
    case Red
    case Blue
    case Yellow
}

var sig: Signal

sig = .Blue
print(sig)


// デリゲート

protocol SardineDelegate {
    func didEatSardine()
}

class Sardine {
    var delegate: SardineDelegate?
    func eaten() {
        print("I was eaten...")
        delegate?.didEatSardine()
    }
}

class Shark: SardineDelegate {
    func eat(){
        let sardine = Sardine()
        sardine.delegate = self
        sardine.eaten()
    }
    
    func didEatSardine() {
        print("I ate a serdine!")
    }
}

let shark = Shark()
shark.eat()

