import UIKit

func getName(name: String) -> String {
    return "El nombre es \(name)"
}



getName(name: "Juan")
getName(name: "Pedro")
getName(name: "Tito")

func sumNumbers(_ numero1: Int, _ numero2: Int) {
    let _ = numero1 + numero2
}
func mutiplicarNumbers(n1 numero1: Int, n2 numero2: Int) {
    let _ = numero1 + numero2
}

sumNumbers(6, 7)
mutiplicarNumbers(n1: 5, n2: 6)

let number:Int? = 8

// Parametros Opciones
func printName(name:String?) -> String? {
    if  let name2 = name {
        if name == "tito" {
            return nil
        } else {
            return "El nombre es \(name2)"
        }
    }
    return ""
}

printName(name: "Pepe")
printName(name: nil)
print(printName(name: "tito") ?? "Nombre vacio")


func sumNumberXY(num1: Int , num2:Int = 3) {
    print(num1 + num2)
}
print("-------")
sumNumberXY(num1: 7, num2: 13)

// Parameter variadic

func sumNumbersPair(_ numbers: Int... ) -> Int {
    var sum = 0
    for number in numbers {
        if number % 2 == 0 {
            sum += number
        }
    }
    return sum
}
print("-------")
print(sumNumbersPair(3, 6 , 4, 8,10))


// Valores inout

func changeValue(num1: inout Int , num2: inout Int) -> (num1:Int, num2:Int) {
    let n = num1
    num1 = num2
    num2 = n
    return (num1,num2)
}

var num1:Int = 10
var num2 = 20
print("Los valores de numero son \(num1) y \(num2)")
var value = changeValue(num1: &num1, num2: &num2)
print("Los valores de numero son \(value.num1) y \(value.num2)")

// -------------------------------
// Method   in vvariable

func addNumber(a: Int, b:Int) -> Int {
    return a + b
} // (Int,Int) -> Int

func subtracNumber(a: Int, b:Int) -> Int {
    return a - b
} // (Int,Int) -> Int

func showValue() {
    print("Algo")
} // () -> Void

let methodAddNumber:(Int,Int) -> Int = addNumber
let methodSubNumber:(Int,Int) -> Int = subtracNumber
let printValue: () -> Void = showValue
print("-----------")
print(methodAddNumber(10,2))
print(methodSubNumber(10,2))
printValue()


func calc(operador:String,a:Int, b:Int) -> Int {
    let methodAddNumber1:(Int,Int) -> Int = addNumber
    let methodSubNumber2:(Int,Int) -> Int = subtracNumber
    switch operador {
    case "+":
        return methodAddNumber1(a,b)
    case "-":
        return methodSubNumber2(a,b)
    default:
        print("Vacio")
    }
    return 0
}

print(calc(operador: "+", a: 80,b: 2))
print(calc(operador: "-", a: 80,b: 2))

print("---------")
func calcWithParameter(_ operador:String,_ a:Int,_ b:Int,_ calculator:(Int,Int) -> Int) -> Int {

    switch operador {
    case "+":
        return calculator(a,b)
    case "-":
        return calculator(a,b)
    default:
        print("Vacio")
    }
    return 0
}

func getFunction(_ operador:String) -> ((Int,Int) -> Int)? {
    switch operador {
    case "+":
        return addNumber
    case "-":
        return subtracNumber
    default:
        print("Vacio")
    }
    return nil
} //(Int,Int) -> Int)
var functionMethod:((Int,Int) -> Int) = getFunction("+")!

//functionMethod = addNumber
//functionMethod = subtracNumber

print(functionMethod(200,200))
functionMethod = getFunction("-")!
print(functionMethod(200,200))

// Nested function
func calculatorWithParameter(_ operador:String,_ a:Int,_ b:Int) -> Int {
    // funciones
    func addNumber2(a: Int, b:Int) -> Int {
        return a + b
    } // (Int,Int) -> Int
    
    func subtracNumber2(a: Int, b:Int) -> Int {
        return a - b
    } // (Int,Int) -> Int
    
    // validador
    switch operador {
    case "+":
        return addNumber2(a: a, b: b)
    case "-":
        return subtracNumber2(a: a, b: b)
    default:
        print("Vacio")
    }
    return 0
}
print("---222---")
print(calculatorWithParameter("/", 10, 90))
print(calculatorWithParameter("+", 10, 90))

