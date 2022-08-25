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

// variadic

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

var num1 = 10
var num2 = 20
print("Los valores de numero son \(num1) y \(num2)")
var value = changeValue(num1: &num1, num2: &num2)
print("Los valores de numero son \(value.num1) y \(value.num2)")

// -------------------------------
