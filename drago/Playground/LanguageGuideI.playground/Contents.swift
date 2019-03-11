import Foundation

/*A01 Escribe el código SWIFT equivalente al siguiente código Java
 double celsius = 10;
 double kelvin = celsius + 273.15;
 System.out.println(celsius+"grados celsius equivalente a "+kelvin+" grados kelvin");
*/

var celsius: Double = 10
var kelvin: Double = celsius + 273.15
print("\(celsius) grados celsius equivalente a \(kelvin) grados kelvin")

/*A02 Escribe el código SWIFT equivalente al siguiente código Java
 int matematicas = 10;
 int lenguaCastellana = 8;
 int ingles = 10;
 int ccnn = 10;
 int ccss = 5;
 double media = ((double)(matematicas + lenguaCastellana + ingles + ccnn + ccss))/5;
 System.out.println(media); //8.6
 
Comprueba que la nota media es un número decimal
 */

var matematicas: Int = 10
var lenguaCastellana: Int = 8
var ingles: Int = 10
var ccnn: Int = 10
var ccss: Int = 5
var media: Double = Double(matematicas + lenguaCastellana + ingles + ccnn + ccss)/5
print(media)

/*A03 Dado un número entero a compuesto por un número cualquier de dígitos, determina y muestra por consola el último de sus dígitos
 let a = 123
 */

let a: Int = 123
var last = a % 10
print(last)

/*A04 Define las variables enteras: edad, nivel de estudios e ingresos. Almacena en una variable Bool denominada jasp el valor: Verdadero si la edad es menor o igual a 28, el nivel de estudios es mayor que 3 y los ingresos superan 28,000€. Falso en caso contrario
 */

var edad: Int = 0
var nivelEstudios: Int = 0
var nivelIngresos: Int = 0
var jasp: Bool = false

if edad <= 28 && nivelEstudios > 3 && nivelIngresos > 28000 {
    jasp = true
} else {
    jasp = false
}

/*A05 Escribe el código SWIFT que declare e inicialice una variable que contenga el valor de la longitud del lado de un cuadrado y otra variable con el radio de un círculo. Calcula el área del cuadrado y del círculo y muéstralo por consola.
 
 HINT: El número PI es 3.1416….. El tipo de dato Double dispone de la constante Double.pi que permite representar el número PI con todos sus decimales
 */

var longitudCuadrado: Double = 3.4
var radioCirculo: Double = 2.5

var areaCuadrado: Double = pow(longitudCuadrado, 2)
var areaCirculo: Double = Double.pi * pow(radioCirculo, 2)

print("Area del cuadrado \(areaCuadrado)")
print("Area del circulo \(areaCirculo)")

/*A06 Escribe el código SWIFT que dado un número entero, muestre por consola true si es par y false si es impar. Usa el operador ternario a ? b : c
 
 HINT: un número es par si el resto de dividir por 2 es 0.
 */

let numeroEntero: Int = 7

if 7 % 2 == 1{
    print("\(numeroEntero) es impar")
} else {
    print("\(numeroEntero) es par")
}

/*A07 La compañía de vuelo LaSalleAir establece que cada pasajero puede subir a bordo una maleta de mano cuyo peso no sobrepase los 10 kg, y tenga unas dimensiones máximas de 55 cm x 40 cm x 20 cm (altura x anchura x profundidad), debido al espacio limitado en cabina. Los pasajeros que superen alguna de estas restricciones tendrán que facturar su equipaje. Escribe el código Java que dado el peso y las dimensiones de una maleta, muestre por consola true si tiene que facturar su maleta de mano o false en caso contrario.
 */

var pesoMaleta: Double =  5.4
var altura: Double = 0.5
var anchura: Double = 0.4
var profundidad: Double = 0.3

if pesoMaleta > 10 || altura > 55 || anchura > 40 || profundidad > 20 {
    print("Va a tener que facturar")
} else {
    print("No tendrá que facturar")
}

/*A08 Completa el código SWIFT que dada la variable precioBase que puede contener precio base de un producto introducido por el usuario, calcule el precio de venta al público (PVP) y lo muestre por consola. Supón que el IVA aplicable es 4%.

 HINT: PVP = precio base + (precio base * IVA)
 
 var precioBase:String?
 your code here
 */

var precioBase: String? = "20"
let IVA: Double = 0.04
if let precio = precioBase{
    if let precioBaseValue = Double(precio){
        let pvp = precioBaseValue + precioBaseValue*IVA
        print(pvp)
    }
}



//var PVP: Double = precioBase + (precioBase! * IVA)
//print(PVP)

/********************STRINGS AND CHARACTERS************************/
/*A09
 Dada una string con el nombre de un usuario y una string con los apellidos de un usuario. Crea una string que contenga el nombre completo. Crea otra string que contenga el nombre y apellidos de otro usuario. Compara los nombres de ambos usuarios (ignore case) mostrando por consola si son iguales o no
 */

var nombre: String = "Dragomir "
var apellido: String = "Galinov"

var nombre2: String = "Marc "
var apellido2: String = "Widmer"

nombre += apellido
nombre2 += apellido2

if nombre == nombre2 {
    print("Son iguales")
} else {
    print("No som iguales")
}

/*A10
 Declara 3 strings, siendo uno de ellos un emoticono. Usa Swift String interpolation para construir otra string con las strings dadas
 */

var string1: String = "\u{1F496}"
var string2: String = "Hola"
var string3: String = "Adios"

print("\(string1) \(string2) \(string3)")

/*A11
 Reemplaza las ocurrencias de la letra e en la siguiente string por *. Utiliza un método de la clase String diseñado para esto
 let aString = "Replace the letter e with *"
 */

let aString = "Replace the letter e with *"
let newString = aString.replacingOccurrences(of: "e", with: "*", options: .literal, range: nil)

print(newString)

/*A12
 Separa la siguiente string en palabras creando un array de strings. Utiliza un método de la clase String diseñado para esto. Muestra el contenido del array por consola
 let problem = "split this string into words and print them on separate lines"
 */

let problem = "split this string into words and print them on separate lines"
var problemArray = problem.components(separatedBy: " ")

print(problemArray)

/********************COLLECTIONS************************/
/*A13
 Crea un array con 3 strings: “C”, “C++”, “Objective-C”. Añade dos nuevos elementos al array (“Swift”, “Other”) en una única sentencia. Añade un nuevo elemento en la posición 2. Muestra por consola el número de elementos del array. Muestra por consola el índice y el valor de cada item del array. Elimina el elemento “Objective-C” del array
 */

//Crear Array con 3 strings
var array = [String](arrayLiteral: "C", "C++", "Objective-C")

//Añadimos 2 nuevos elementos
array += ["Swift", "Other"]

//Añade nuevo elemento en posicion 2
array.insert("Hola", at: 1)
print(array)
//Muestra por consola el índice y el valor de cada item del array
var arrayOfTupples = [(Int, String)]()
for (index, element) in array.enumerated(){
    arrayOfTupples += [(index, element)]
}
print(arrayOfTupples)

//Elimina el elemento “Objective-C” del array
array.remove(at: 2)
/*A14
 Añade los valores 1138, 1337, y 4711 al final del siguiente array:
 var stuff = [4, 8, 15, 16, 23, 42]
 */

var stuff = [4, 8, 15, 16, 23, 42]
stuff.append(1138)
stuff.append(1137)
stuff.append(4711)


/*A15
 Cambia los valores 15, 16, and 23 con los valores 1, 2, 3, 4, y 5 en el siguiente array:
 var numbers = [4, 8, 15, 16, 23, 42]
 */
var numbers = [4, 8, 15, 16, 23, 42]
numbers.replaceSubrange(0...5, with: [1, 2, 3, 4, 5])

/*A16 Crea un array que contenga 50 "🐑" strings. Muestra la longitud del array
 */
var someArray = [String](repeating: "🐑", count: 50)
print(someArray.count)

/*A17 Crea un diccionario que posteriormente se pueda modificar llamado secretIdentities donde las parejas de clave valor sean "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent". Muestra por consola la identidad secreta de Batman. Reemplaza la identidad secreta de Hulk con "David Banner".
 */

var namesOfSuperheroes: [String: String] = ["Hulk": "Bruce Banner", "Batman": "Bruce Wayne", "Superman": "Clark Kent"]
print(namesOfSuperheroes["Batman"] as Any)

namesOfSuperheroes["Hulk"] = "David Banner"
print(namesOfSuperheroes["Hulk"] as Any)


/*A18
 Declara un dictionary vacío String:Double. Añade nuevos elementos con el precio actual de la gasolina 95, gasolina 98, gasóleo A. Actualiza el precio de gasolina 98 incrementándolo un 5% respecto del precio que tenga. Muestra por consola el dictionary creado (key:value)

 */
var doubleDictionary: [String: Double] = ["gasolina 95": 1.059, "gasolina 98": 1.299, "gasoleo A": 1.499 ]
if let precio = doubleDictionary["gasolina 98"]{
    doubleDictionary["gasolina 98"] = precio*1.05
}
//MUY MAL
/*var precioGasolina = doubleDictionary["gasolina 98"]! * 1.05
doubleDictionary["gasolina 98"] = precioGasolina*/

print(doubleDictionary)



/* A19 Dada una string, elimina todas sus vocales y los espacios en blanco
 */

let string: String = "Dada una string, elimina todas sus vocales y los espacios en blanco"
let newStringWithoutSpaces = aString.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)





