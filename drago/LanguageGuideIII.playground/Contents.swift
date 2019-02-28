import Foundation


/*A01
 Define un struct Point2D que tenga:
 Dos variable stored properties x,y de tipo Double y cuyo valor por defecto sea 0.0
 Una read-only computed property description de tipo String cuyo valor sea "Point x:\(x) y:\(y)".
 Define el objeto aPoint del tipo struct Point2D con x=2.0,y =5.0
 Define el objeto anotherPoint del tipo Struct Point2D con x=0, y=0
 Muestra por consola el valor de la property description de ambos objetos
 */

struct Point2D{
    var x: Double = 0.0
    var y: Double = 0.0
    var description: String {
        return "Point x:\(x) y:\(y)."
    }
}

let aPoint: Point2D = Point2D(x:2.0, y:5.0)
let anotherPoint: Point2D = Point2D()

print("aPoint =", aPoint.description)
print("AnotherPoint =", anotherPoint.description)

/*A02
 Modifica el struct Point2D de la actividad anterior, identificándolo como Point2DWithInitializers, de forma que no asigne el valor por defecto de 0.0 a sus stored properties x e y. Implementa los inicializadores con y sin parámetros de entrada que permitan crear los objetos aPoint y anotherPoint de la actividad anterior.
 */

struct Point2DWithInitializers{
    var x: Double
    var y: Double
    var description: String {
        return "Point x:\(x) y:\(y)."
    }
    init(){
        self.x = 0.0
        self.y = 0.0
    }
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}

let aPointWithInitializers: Point2DWithInitializers = Point2DWithInitializers(x:2.0, y:5.0)
let anotherPointWithInitializers: Point2DWithInitializers = Point2DWithInitializers()

print("aPoint =", aPointWithInitializers.description)
print("AnotherPoint =", anotherPointWithInitializers.description)



/*A03
 Define un struct Circle2D que tenga:
 Una variable stored property center de tipo Point2D struct. Su valor por defecto será un Point2D con x=0.0 e y=0.0
 Una variable stored property radius de tipo Double.
 Una read-only computed property description de tipo String cuyo valor sea "Circle center:\(center.description) radio:\(radius)".
 Un método inicializador que tenga como parámetros el centro (Point2D struct) y el radio (Double)
 Un método inicializador que tenga como parámetro el radio (Double)
 Un método inicializador que tenga como parámetros x (Double), y (Double) y el radio (Double)
 Crea distintos objetos de tipo struct Circle2D usando los distintos inicializadores creados, de cada uno de ellos muestra por consola su descripción y su area
 */

struct Circle2D{
    var center = Point2D()
    var radius: Double
    var description: String {
        return "Circle center:\(center.description) radio:\(radius)."
    }
    var area: Double{
        return Double.pi * pow(radius, 2)
    }
    
    init(point: Point2D, radio: Double){
        self.center = point
        self.radius = radio
    }
    
    init(radio: Double){
        self.radius = radio
    }
    
    init(x: Double, y: Double, radio: Double){
        self.center = Point2D(x: x, y: y)
        self.radius = radio
    }
}

let circle1 = Circle2D(point: aPoint, radio: 2.0)
let circle2 = Circle2D(radio: 2.0)
let circle3 = Circle2D(x: 2.0, y: 3.0, radio: 2.0)

print(circle1.description)
print(circle1.area)

print(circle2.description)
print(circle2.area)

print(circle3.description)
print(circle3.area)

/*A04
 Define e implementa la clase Calculadora con:
 Dos propiedades de tipo int
 Un método inicializador que permita asignar valor a sus dos propiedades
 Métodos de clase (Type Methods): sumarX:conY, restarX:conY, multiplicarX:conY, dividirX:conY, que recibirán como parámetros dos int y realizaran las operaciones entre los parámetros recibidos que sus nombres indican devolviendo el resultado.
 Métodos de instancia (Instance Methods): sumar, restar, multiplicar, dividir, que realizarán las operaciones que sus nombres indican con las propiedades de la clase, y devolverán el resultado.
 
 Testea que los métodos que has definido en la clase Calculadora realizan las operaciones correctamente. Fíjate en las diferencias entre las llamadas a los métodos de clase y a los métodos de instancia.
 */

class Calculadora{
    var valor1: Int
    var valor2: Int
    
    init(valor1: Int, valor2: Int){
        self.valor1 = valor1
        self.valor2 = valor2
    }
    
    static func sumarX(valor1: Int, valor2: Int) -> Int {
        return valor1 + valor2
    }
    
    static func restarX(valor1: Int, valor2: Int) -> Int {
        return valor1 - valor2
    }
    
    static func multiplicarX(valor1: Int, valor2: Int) -> Int {
        return valor1 * valor2
    }
    
    static func dividirX(valor1: Int, valor2: Int) -> Int {
        return valor1 / valor2
    }
    
    func sumar() -> Int {
        return valor1 + valor2
    }
    
    func restar() -> Int {
        return valor1 - valor2
    }
    
    func multiplicar() -> Int {
        return valor1 * valor2
    }
    
    func dividir() -> Int {
        return valor1 / valor2
    }
}


print(Calculadora(valor1:3, valor2:4).sumar())
print(Calculadora(valor1:3, valor2:4).restar())
print(Calculadora(valor1:3, valor2:4).multiplicar())
print(Calculadora(valor1:3, valor2:4).dividir())

print(Calculadora.sumarX(valor1: 3, valor2: 4))
print(Calculadora.restarX(valor1: 3, valor2: 4))
print(Calculadora.multiplicarX(valor1: 3, valor2: 4))
print(Calculadora.dividirX(valor1: 3, valor2: 4))

/*A05
 Define la clase Animal con las siguientes características:
 Stored Property legs de tipo Int
 Computed Property description de tipo String y cuyo valor sea “This animal has \(legs) legs”
 Initializer que reciba como parámetro legs y de valor a esta propiedad.
 Instance method walk() que retornará una String con el texto "This animal walks on \(legs) legs."
 
 Define la clase Fish, subclase de Animal con las siguientes características:
 Stored Property name de tipo String, será opcional.
 Initializer sin parámetros, un Fish tiene 0 legs por tanto en su implementación se pasará 0 al inicializador de la superclase.
 Sobre-escribirá el método walk() que retornará una string resultado de concatenar el retorno de la llamada al método walk() de la superclase y el texto “Fish, of course, can`t walk, they swim”
 
 Define la clase Cat, subclase de Animal con las siguientes características:
 Stored Property name de tipo String
 Sobre-escriba Computed Property description para que su valor sea “\(name) has \(legs) legs”
 Initializer con el parámetro name. Un Cat tiene 4 legs por tanto en su implementación se pasará 4 al inicializador de la superclase.
 Initializer sin parámetros, que llamará al método inicializador anterior pasándole como valor de name “Fluffy”
 */

class Animal{
    var legs: Int
    var description: String {
        return "This animal has \(legs) legs"
    }
    
    init(){
        self.legs =
    }
}
