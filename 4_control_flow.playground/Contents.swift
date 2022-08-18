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


