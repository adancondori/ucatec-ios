import UIKit
// string one line
var greeting = "Hello, playground"

// string multiple line
 var greeting2 = """
 Hola mundo
 Como estas\
 "Pepe Perez"
 """
print(greeting2)
var greeting3 = "Hello, playground \"Pepe Perez\" "

print(greeting3)

// writing unicode
let dolar = "\u{24}"
let asd = "\u{40}"
let corazon = "\u{1F494}"
let hospital = "\u{1F3E9}"
print(dolar)
print(asd)
print("Mensaje cualquier \(corazon)")
print("Estay en hospital \(hospital)")


//
var greeting4 = #"""
Hola mundo
Como estas\
"Pepe Perez"
"""
"""#

print(greeting4)

// String initialization

var homer0: String
var homer1 = String()
var homer2 = ""


if homer1.isEmpty {
    print(homer1)
} else {
    print("cadena vacia")
}

// contatenacion
var value = "hola"
value += " como"
value += " estas"
value += ""
print(value)

var name = "juan "
var lastName:String? = ""
lastName = nil
name += lastName ?? "-"
print(name)


// variables mutables, referencia
var a = "A"
var b = "B"

print(a," ", b)
a = b
print(a," ", b)
a = "C"
print(a," ", b)


// caracteres

var test = "Maria Juanes 🏩"
for _ in test {
    //print(char)
}
print("---------")
for char in test {
    print(char)
}
print("----- indices ----")
//print(test[0])

for idx in test.indices {
    print(idx)
}

print(test[test.startIndex])
print(test[test.index(before: test.endIndex)])
print(test[test.index(after:  test.startIndex)])

for idx in test.indices {
    print(test[idx], " - ", idx)
}


test.insert("?", at: test.endIndex)
print(test)

let indexSpace = test.firstIndex(of: "J") ?? test.startIndex
print("-------")
print(test[indexSpace])
print("-------")
let name4 = test[..<indexSpace]
let name5 = String(name4)
print(name4)
if !name4.isEmpty {
    print("dsaf sad")
}


//
var bay = "Matias Ezequiel 🏩"
//if bay.hasPrefix("Ma") {
if bay.hasSuffix("🏩") {
    print("OKEY")
} else {
    print("NOK")
}

let collection = [
    "Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2"
]

var count = 0
for value in collection {
    if value.hasPrefix("Act 1") {
        count += 1
    }
}
print(count)

print(bay)
print("bay", terminator: " ")
print("bay", terminator: " ")
print("bay", terminator: " ")
