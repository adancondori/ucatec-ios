import UIKit

let names = ["pedro", "maria", "arturo"]

for value in names {
    print(value)
}

let namesValue = ["pedro":100, "maria":20, "arturo":90]
for (_, value) in namesValue {
    print(value)
}

print("--------")
var sum = 0
for (_, value) in namesValue {
    sum += value
}
print(sum/namesValue.count)
print("--------")
let initial = 0
let count = 10
let interval = 5
for value in stride(from: initial, to: count, by: interval) {
    print(value)
}

for i in 0..<10 {
    print(i)
}

// While
var i = 0
while (i <= 10) {
    print("value", i)
    i += 1
}

repeat {
    i += 1
    print(i)
} while (i < 11)

// IF
// method find color
var isBlue = "blue"
if (isBlue == "blue") {
    print("correcto")
} else if isBlue == "green" {
    print("incorrecto")
} else if isBlue == "yellow" {
    print("incorrecto")
}

let alpha : Character = "A"
switch alpha {
case "a", "A":
    print("contiene la letra a")
case "b", "B":
    print("contiene la letra b")
default:
    print("No es un abecedaria")
}

let month : Int8 = 6
switch month {
case 1..<7:
    print("1er Semestre")
case 7..<13:
    print("2do Semestre")
default:
    print("No es un abecedaria")
}

print("--------")
let point  = (6,6)
switch point {
case (_,200):
    print("Exito")
case (0,201):
    print("Error no se encuentra")
case (5,_):
    print("Hola")
case (1...2 , 2...4): // (1,2) ,(2,2) , (1,3) ,(2,3), (1,4) ,(2,4)
    print("Hola 32")
case let (x,y) where x == y: // (1,2) ,(2,2) , (1,3) ,(2,3), (1,4) ,(2,4)
    print("Son Iguales ")
default:
    print("No se encuentra")
}

print("-------")
let point3 = (9,9)
switch point3 {
case (let xx,let _):
    print(xx)
    fallthrough
default:
    print("No se encuentra")
}
print("-------")
// Control continue, break, return, fallthrough, guard


let animals = ["pato","perro","zorro","tigre","gato"]
let search = "zorro"
var animales = ""
for animal in animals {
    if animal == search {
        //print("animal encontrado")
        continue
    }
    animales.append(animal + ",")
}
print(animales)


print("-------")
func numberPar(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

let sw = numberPar(number: 7)

// json name:pepe lastname:perez
func numberInPar(number: Int?) -> Bool {
    /*guard let impar = number else {
        print("El numero es nulo \(number)")
        return true
    }
    */
    if (number ?? 0) % 2 != 0 {
        return true
    }
    return false
}
print(numberInPar(number: 8))
/*
var listString:Array=["a","b","c","d"]
let valueCurrent = listString.removeFirst()
for value  in listString {
    if valueCurrent == value {
        
    }
    print(value)
}
*/
print("----")
var listString:Array=["a","a","c","a"]

for value  in listString {
    var valueCurrent = value
    let fff = listString.lastIndex(of: valueCurrent)!
    print(fff)
    print(value)
    if (fff+1) < listString.count && valueCurrent == listString[fff+1] {
        print("Son iguales")
        valueCurrent = listString[fff+1]
    }
}

