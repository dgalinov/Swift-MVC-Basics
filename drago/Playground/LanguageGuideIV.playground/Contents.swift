import Foundation


/*A01
Una persona tiene un nombre pero puede o no tener una cuenta bancaria. Y una cuenta bancaria seguro que tiene un balance.
 a. Realiza los cambios necesarios en el siguiente código para representar la situación descrita.
 b. Define una persona llamada "a" que tenga una cuenta bancaria. Define otra persona llamada "b" que no tenga cuenta bancaria. Obten el balance de la persona 'a' y de la persona 'b'. Date cuenta de que primero tendrás que comprobar si tiene cuenta bancaria o no, para luego saber el balance en caso positivo.
  */


 class BankAccount {
   var balance: Int = 0
 }

 class Person {
    var name:String
    var bankAccount: BankAccount?
 
        init(_ name:String, _ bankAccount: BankAccount?){
            self.name = name
            self.bankAccount = bankAccount
        }
 }

var bankAccount = BankAccount.init()
var personA = Person("a", bankAccount)

var personB = Person("b", nil)

func hasBankAccount(person: Person) -> String{
    if person.bankAccount != nil {
        return "Persona \(person.name) tiene bankaccount"
        print(person.bankAccount?.balance as Any)
    } else {
        return "Persona \(person.name) no tiene bankaccount"
    }
}

print(hasBankAccount(person: personA))
print(hasBankAccount(person: personB))


/*A02
 Define el struct Country que tenga como propiedades: un nombre y una capital
 Haz que el struct sea conforme al protocolo Hashable
 Dos Countries se considerarán iguales si tienen igual nombre e iguales capitales.
 */

struct Country{
    var nombre: String
    var capital: String
}

extension Country: Hashable {
    static func == (cntx: Country, cnty: Country) -> Bool {
        return cntx.nombre == cnty.nombre && cntx.capital == cnty.capital
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(nombre)
        hasher.combine(capital)
    }
}

var countries: Set = [Country(nombre: "España", capital: "Madrid"), Country(nombre: "Alemania", capital: "Berlin")]

var country1 = Country(nombre: "España", capital: "Madrid")
var country2 = Country(nombre: "Bulgaria", capital: "Sofia")

if countries.contains(country1) {
    print("Already exists (\(country1.nombre), \(country1.capital)).")
} else {
    print("New Country detected (\(country1.nombre), \(country1.capital)).")

}

if countries.contains(country2) {
    print("Already exists (\(country2.nombre), \(country2.capital)).")
} else {
    print("New Country detected (\(country2.nombre), \(country2.capital)).")
    
}

/*A03
 Define el struct GridPoint con dos propiedades: la coordenada x y la coordenada y, ambas de tipo Int.
 Crea una colección Set de GridPoints. ¿Es posible?
 Haz que el struct sea conforme al protocolo Hashable
 Dos GridPoints se considerarán iguales si tienen ambas coordenadas iguales.
 De nuevo intenta crear una colección Set de GridPoints. ¿Es posible?
 Intenta añadir un GridPoint con las mismas coordenadas que otro, ¿qué sucede?
 */

struct GridPoint {
    var x: Int
    var y: Int
}

extension GridPoint: Hashable {
    static func == (lhs: GridPoint, rhs: GridPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

var tappedPoints: Set = [GridPoint(x: 2, y: 3), GridPoint(x: 4, y: 1)]
let nextTap = GridPoint(x: 0, y: 1)

if tappedPoints.contains(nextTap) {
    print("Already tapped at (\(nextTap.x), \(nextTap.y)).")
} else {
    tappedPoints.insert(nextTap)
    print("New tap detected at (\(nextTap.x), \(nextTap.y)).")
}

/*A04
Se desea conocer el sueldo neto mensual que recibirán los empleados de una empresa.
Para todos los empleados el calculo de su sueldo neto es el mismo e igual a sueldoBase+retencionesIRPF. Cuando se da de alta un empleado se le asigna un sueldoBase. Supondremos que las retencionesIRPF son una cantidad fija de 250€
A los encargados, al sueldo neto indicado antes se le suma 50€ por cada hora extra que hacen
A los comerciales, al sueldo neto indicado antes se le suma 100€ por cada venta conseguida

 a. Define la jerarquía de clases necesaria
 b. Define un array de elementos del tipo Empleado. Inserta en el array distintos tipos de empleados (comerciales y encargados).
 c. Recorre el array y para cada elemento muestra por consola: si es empleado o encargado, su sueldo neto y el nº de horas extra (en el caso de que sea encargado) / nº de ventas (en el caso de que sea comercial)
*/

/* class Empleado {
    var salarioNeto: Int
    
    init(salarioNeto: Int){
        self.salarioNeto = salarioNeto
    }
}

class encargado: Empleado{
    var horasExtra: Int
    override var salarioNeto: Int {
 
    }
    
    init(horasExtra: Int, salarioNeto: Int){
        self.horasExtra = horasExtra
        super.init(salarioNeto: salarioNeto)
    }
}
*/



/*A05
 Define una clase ArrayReal con
 Una propiedad que permita almacenar un array de enteros
 Un método inicializador que reciba como parámetros n, max ambos de tipo int. En su implementación crea y asigna a la propiedad un array de n enteros cuyos valores se calcularán de forma aleatoria de 0 a max.
 Define un protocolo Estadisticas con los métodos obligados: minimo, maximo, sumatorio
 Haz que la clase ArrayReal sea conforme al protocolo Estadísticas definiendo la implementación de sus métodos.
 Crea e inicializa un objeto ArrayReal. Muestra por consola su máximo, su mínimo y el sumatorio de los valores.
 */

class ArrayReal: Estadisticas{
    var arrayEnteros = [Int]()
    init (n: Int, max: Int) {
        for _ in 0..<n{
                self.arrayEnteros+=[Int.random(in: 0...max)]
        }
    }
}

protocol Estadisticas {
    func minimo() -> Int
    func maximo() -> Int
    func sumatorio() -> Int
}

let a = ArrayReal(n: 5, max: 5)
let array = a.arrayEnteros
for item in array {
    print(item)
}

/*A06
 Define el protocolo denominado GeometricOperations, que disponga de dos métodos perimeter(), area(). Ambos métodos devolverán valores numéricos.
 
 Define el protocolo denominado ResizableOperations, que disponga de un método resize que reciba como parámetro un valor numérico que será el porcentaje de redimensionado.
 
 Define el struct Rectangle2D que dispondrá de dos propiedades que serán su anchura y su altura. Su implementación debe ser conforme al protocolo GeometricOperations
 (área rectángulo: w*h, perímetro rectángulo: 2*w+2*h)
 
 Define el struct EquilateralTriangle2D que dispondrá de una propiedad que será su lado. Su implementación debe ser conforme a los protocolo GeometricOperations y ResizableOperations
 (área triángulo equilátero: pow(l,2)*sqrt(3)/4, perímetro triángulo equilátero: 3*l)
 
 a. Define un array de elementos del tipo Any que contenga tanto Rectangle2D como EquilateralTriangle2D
 c. Recorre el array y para cada elemento muestra por consola su área y su perímetro. Si algún elemento del array es conforme al protocolo ResizableOperations, cambia su tamaño y muestra por consola su área y perímetro después de realizar el escalado
 
 */



/*A07
 Utiliza Delegation Pattern para desarrollar el siguiente problema.
 
 Un profesor usa un delegado (Delegate) para el calculo de la nota media de los alumnos de su clase y el calculo del % de ausencias.
 
 Define el protocolo Operations que dispondrá de dos métodos averageScore y absentsScore.
 El método averageScore recibirá un array de valores númericos (las notas de los distintos ejercicios realizados por un alumno) y devolverá la nota media de estos valores
 El método absentsScore recibirá un array de valores enteros  con las ausencias de un alumno (1: ausencia, 0: no ausencia). Este método devolverá el % de ausencias de estos valores
 
 Define la clase Delegate que sea conforme al protocolo Operations
 
 Define la clase Profesor cuya estructura siga el Delegation Pattern. Dispondrá de un método tasksForToday en cuya implementación utilizará al delegado para calcular la nota media y el % de ausencias de un determinado alumno.
 */




