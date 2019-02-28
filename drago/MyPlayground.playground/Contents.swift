import UIKit

var str = "Dragomir Galinov Draganov"

// Definimos el display suma que se va a mostrar por pantalla
private var acumulador: Float = 0;
private var display: Float = 0;
private var rewrite: Bool = true;
private var operador = 0;

//Definir los static finals
let SUMA = 1;
let RESTA = 2;
let MULTIPLICA = 3;
public static var DIVIDE: Int = 4;
static let IGUAL = 5;
static let NADA = 0;

// Creamos las funciones
func CalculatorBrain()
{
    self.reset()
}

func reset() -> Void
{
    display = 0;
    acumulador = 0;
    operador = CalculatorBrain.NADA
}

fun getDisplay() -> Float
{
    return display;
}


