import Foundation

/***********************FUNCTIONS*************************/
/*A01
 Write a function split(name: String) that takes a name (e.g. "Donald Trump") as input and returns the first and the last name separated into a tuple with two elements.
 
 The function should be able to handle the following cases without crashing:
 split(name: "Donald Trump")
 split(name: "Batman")
 split(name: "")
 */

func split (name:String)->(name: Substring, lastname: Substring) {
    if (name.contains(" ")) {
        let splitName = name.split(separator: " ")
        return(splitName[0],splitName[1])
    } else if (name.isEmpty) {
        return("", "")
    } else {
        return (Substring(name),"")
    }
}
print(split(name: "Donald Trump"))
print(split(name: "Batman"))
print(split(name: ""))

/*A02
 Write a function square that takes an Int as input, but doesn't require a label at the call site, i.e. square(3) should work. It should return the square of the input value.
 */
func squareUp(parameter1: Double) -> Double{
    let squareRootOfFour = sqrt(parameter1)
    return squareRootOfFour
}

print(squareUp(parameter1: 5.00))

/*A03
 Write a function whoAmI that takes a name as input parameter. If the name is "Bruce Wayne", the function should return "I am Batman", otherwise return "I am not Batman". The input parameter should have a default value of "Bruce Wayne".
 */
func whoAmI (parameter1: String = "Bruce Wyane") -> String{
    if parameter1.elementsEqual("Bruce Wayne") {
        return "I am Batman"
    } else {
        return "I am not Batman"
    }
}

print(whoAmI(parameter1: "Marc Widmer"))

/*A04
 Write a function sum that takes a variable number of integers as input and returns the sum of the numbers.
 */

func sumatory (_ numbers: Int...) -> Int{
    var sum = 0
    for n in numbers{
        sum+=n
    }
    return sum
}

let array: Array<Int> = [1, 12, 2, 9, 27]
print(sumatory(1, 12, 2, 9, 27))
print(sumatory(1))
/*A05
 Crea una función denominada calculateStatistics que reciba como parámetro un array de enteros y retorne el valor máximo, el valor mínimo, la suma de todos los valores y el valor medio.
 Define un array de enteros y utiliza la función calculateStatistics para calcular su valor min, max, la suma y el valor medio. Muestra por consola estos datos calculados.
 */

let array_notas: Array<Int> = [10, 9, 2, 9, 7]

func calculateStatistics (array: Array<Int>) -> (Int?, Int?, Int, Int){
   // if array.isEmpty { return nil }
    
    let max = array.max()
    let min = array.min()
    let sum = array.reduce(0, +)
    let med = sum/array.count
    
    return (max, min, sum, med)
}

print(calculateStatistics(array: array_notas))

/*A06
 Crea una función denominada overCutOffValue que reciba un array de enteros y un valor entero de corte (cutOff). Por defecto el valor entero cutOff será 0. Esta función devolverá la diferencia entre el máximo valor del array y el valor de corte cutOff especificado por el usuario, y en ausencia de éste, se usará el valor por defecto.
 */

func overCutOffValue (array: [Int], cutOff: Int = 0) -> (Int) {
    
    var sum: Int = 0
    
    for i in 0...array.count {
        sum += array[i]
        
        if i == cutOff {
            break
        }
    }
    
    return sum - cutOff
}

let array_numeros: Array<Int> = [1, 2, 3, 45, 6, 2, 4, 67]

print(overCutOffValue(array: array_numeros, cutOff: 5))

/*A07
 Crea una función denominada swapTwoInts que reciba dos valores enteros y los retorne con el valor intercambiado. Usa inout parameters
 
 */

func swapTwoInts (_ a: inout Int, _ b: inout Int) -> (Int, Int){
    let aIntercambiado = b
    let bIntercambiado = a
    
    return (aIntercambiado, bIntercambiado)
}
var firstInt = 3
var secondInt = 4
print(swapTwoInts(&firstInt, &secondInt))


/***********************CLOSURES*************************/

/* A08
 Write a closure that prints the string "stuff" and assign the closure to a variable. Then call the closure.
 */

let valor_stuff = {return ("Stuff")}

print(valor_stuff())

/*A09
 Escribe un closure que retorne el cuadrado de un valor de entrada. Escribe el closure y la llamada dentro de los paréntesis de la llamada al método print.  print( <write your closure here> ).
 */

print({(valor:Int)->Int in return valor*valor}(2))
//print({$0*$0}(2))

/*A10
 Ordena el array de menor a mayor y de mayor a menor usando el método sorted(by:) y un clousure
 let nums = [16, 8, 15, 42, 4, 23]
 */
let nums = [16, 8, 15, 42, 4, 23]

let array_sorted = nums.sorted(by:{$0 > $1})

print(array_sorted)

/***********************ENUMERATIONS*************************/

/*A11
 Considera la siguiente función
 func dayType(for day: String) -> String {
    switch day {
       case: "Saturday", "Sunday": return "Weekend"
       case: "Monday", "Tuesday", "Wednessday", "Thursday", "Friday": return "Weekday"
       default: return "This is not a valid date"
    }
 }
 
 Si la llamada a la función es "Sunday" "Thursday", la función trabaja bien devolviendo el valor correcto
 let result1 = dayType(for: "Sunday") //will return "Weekend"
 let result2 = dayType(for: "Thursday") //will return "Weekday"
 Pero si te equivocas y en lugar de "friday" escribes "fridayys" retornará que no es un valor válido
 let result3 = dayType(for: "fridayys") //will return "This is not a valid date"
 
 Las enumeraciones en este caso pueden ayudarnos a protegernos de este tipo de errores, cuando tenemos un grupo de valores acotado como son los días de la semana. Crea una enumeration denominada Day con todos los días de la semana (Monday, Tuesday, ..., Sunday). Redefine la función dayType para que la use. Llama a esta función para comprobar su funcionamiento
 */



/*A12
 Una enumeration también puede contener métodos. Define la enum AppleDevice con los valores iPad, iPhone, AppleTv, AppleWatch. Define en ella la función description que retorne una String con la descripción de cada dispositivo según el tipo. Llama a esta función.
 */

