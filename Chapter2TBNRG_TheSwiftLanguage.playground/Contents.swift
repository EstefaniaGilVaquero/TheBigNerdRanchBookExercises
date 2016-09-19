//: Playground - noun: a place where people can play

import UIKit
//Variables de tipo inferido
var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str

//variables de tipo especificado
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
//Arrays
var arrayOfInts: [Int]
var dictionaryOfCapitalsByCountry: [String:String]

//Set, contiene elementos de un determinado tipo, estan desordenados y no la clave debe ser unica.
var winningLotteryNumbers: Set<Int>
//Literales enteros y dobles
let number = 42
let fmStation = 91.1
//literales arrays y diccionarios
var countingUp = ["one","two"]
let secondElement = countingUp[1]
//INICIALIZADORES ¿ES LO MISMO QUE CASTING?
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
//Valores por defecto
let defaultNumber = Int()
let defaultBoolean = Bool()
//Los tipos pueden tener varios inicializadores
let meaningOfLife = String(number)
//Inicializar set pasasndo un array de literales como parametro
let availableRooms = Set([205,411,412])
//Float tiene varios inicializadores
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
//Si infieres valor a una variable con un valor de coma flotante, el tipo por defecto es Double
let easyPi = 3.14
//Ahora usa el inicializador de float que admite Double para crear una variable float
let floatFromDouble = Float(easyPi)
//Se logra lo mismo si especificamos el tipo en la declaracion de la variable float
let floatingPi: Float = 3.14

//PROPERTIES -- SON VALORES ASOCIADOS A LA INSTANCIA DE UN TIPO
//Por ejemplo String tiene la propiedad .isEmpty, que devuleve un booleano.
countingUp.count
emptyString.isEmpty

//METODOS INSTANCIADOS?????

countingUp.append("three")


//OPTIONALS: -- El symbolo ? de opcional expresa la posibilidad de que una variable no tenga valor, el valor de un opcional sera una instancia de un determinado tipo, o nil.
//Ejemplo: Tenemos un grupo de lecturas de instrumentos
var reading1: Float
var reading2: Float
var reading3: Float
//A veces un instrumento puede reportar un error y no devolver una lectura, por tanto no quieres que te devuelva un 0.0. Quieres que te devuelva algo diferente que te indique que tienes que revisar el instrumento o hacer otra cosa. Esto se hace declarando las lecturas como opcionales
var reading11: Float?
var reading22: Float?
var reading33: Float?
//Si no se le da valor inicial , por defecto es nil
//Puedes asignar valores a un opcional como a cualquier otra variable
reading11 = 9.8
reading22 = 9.2
reading33 = 9.7
//Antes de poder leer el valor de una variable, tienes que contemplar la posibilidad de que su valor sea nil.
//A esto se le llama (unwrapping) desempaquetar el opcional
//Hay dos maneras de desempaquetar un opcional (optional binding|forced unwrapping)
// Forced Unwrapping -- Cuando fuerzas el desempaquetado del opcional, le estas asegurando al compilador que la variable no sera nil y que la puede tratar como un Float normal. Pero de no ser asi daria un error de compilacion(fatal error: unexpectedly found nil while inwrapping an Optional value)
let avgReading = (reading11! + reading22! + reading33!) / 3
// Optional binding -- Usando un condicional if-let. Asignas el opcional a una constante temporal. Si tiene valor, procedes a usar la constante. Si es nil, puedes tratar ese caso en un else.

if let r1 = reading11, r2 = reading22, r3 = reading33 {
    let avgReading = (r1 + r2 + r3) / 3
}else{
    let errorString = "El instrumento a devuleto una lectura que es nil"
}

//INDEXANDO DICCIONARIOS
//Indexar un diccionario fuera de sus limites devuelve un nil, por eso es comun usar if-let cuando se accede a un diccionario

let nameByParkingSpace = [13: "Alice", 27:"Bob"]
let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]

if let space13Assignee = nameByParkingSpace[13]{
    print("key 13 is assigned in the dictionary!")
}

//BUCLES E INTERPOLACION DE STRINGS
//Swift admite el bucle tipo C tradicional
//Comentado pq da error al estar deprecated
//for var i = 0; i < countingUp.count; ++i {
//    let string = countingUp[i]
//    //Use string
//}

//Pero una forma mas sencilla y limpia de hacerlo seria

//let range = 0..<; countingUp.count
//for i in range {
//    let string = countingUp[i]
//    //Use string
//}

//lo mas directo seria enumerar los objetos en el array por si mismos
for string in countingUp {
    //Use string
}

//si quieres el indice de cada objeto del array
//la funcion enumerate devuelve una secuencia de enteros y valores
for (i, string) in countingUp.enumerate() {
    //(0,"one"), (1,"two")
}

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

//ENUMERACIONES Y SWITCH
//Un enumeration es un tipo con un pequeño conjunto de valores.

enum PieType {
    case Apple
    case Cherry
    case Pecan
}
let favoritePie = PieType.Apple

//switch, los casos de una clausula switch deben ser exaustivos, hay que contemplar cada posible valor de la expression, explicitamente o mediante un caso por defecto

let name: String
switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Cherry"
case .Pecan:
    name = "Pecan"
}

//La clausula swith puede casar con muchos tipos, incluso rangos

let osxVersion: Int = 11
switch osxVersion {
case 0...8:
    print("A big cat")
case 9:
    print("Mavericks")
case 10:
    print("Yosemite")
default:
    print("Greetings, people of the future! What's new in 10. \(osxVersion)?")
}












