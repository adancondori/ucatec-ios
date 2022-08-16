import UIKit

var greeting = "Hello, playground"

// Operadores

var total = 5 + 5
 total = 5 - 5
 total = 5 * 5
 total = 5 / 5
 total = 10
 total += 10

print(total)



// Comparciones
let a = 5
let b = 6
let c = 6
if a == b {
    print("son iguales")
}
if a > b {
    print("a es mayor que b")
}

if !(c == a) {
    print("HOLAS ")
}

// ==
// >=
// ||
// &&
// !
// !=

// VARIABLES OPCIONALES
// class user
var state:Int?
var name:String?
var lat_name:String?
// API rest
//name = "juan pablo"
name = nil
var name2 = "juan pablo"
if name == name2 {
    print("Iguales")
}
//print(name)

if let name_aux = name {
    print(name_aux)
} else {
    print("el valor es nulo")
}

// TUPLAS
// (INT,INT)
var point = (asdf: "hola",qwerty: 700)
print(point.asdf)
print(point.qwerty)

// Control Error

func getName() throws -> String {
    return "PEDRO"
}

func getAge() throws -> Int  {
    return 50
}

func test() {
    do {
      try getAge()
    } catch {
        print("OCURRIO un error")
    }
}

test()


// Nil Coalescing

var number: Int?
number = 8

// print(number != nil ? number! : "Valor es Nulo")
print(number ?? "Es NULO")

// DICTIONARY
 
var json = [String:Int]()
json["JUAN"] = 9
json["PEDRO"] = 10
json["PEPE"] = 100

if let name = json["PEPE"] {
    print(name)
} else {
    print("No se encuentra el nombre")
}

var json2 = [String:Any]()
json2["X"] = 1
json2["Y"] = true
json2["Z"] = 0.3
print("-----")
print(json2)

// Vectores
 var listAnimals = [String]()
listAnimals.append("Perro")
listAnimals.append("Gato")

listAnimals.remove(at: 0)
print(listAnimals)

print(listAnimals.count)
print(listAnimals.isEmpty)
 
var car = Set<String>()
car.insert("t")
car.insert("asdfasdf")


print(car)




print("Escribe el texto:")
var texto = "Hola mundo como estas"

print("Escribe el caracter a buscar:")
var caracter  = "e"


if !texto.isEmpty &&  !caracter.isEmpty
{
//print(texto)
//print(caracter)

  
  if (texto.contains(caracter)){
    print("El caracter esta en el texto")
  }else{
    print("El caracter no esta en el texto")
  }
  
}
else{
  print("Alguno de los campos esa vacio")
}
