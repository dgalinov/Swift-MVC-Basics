package com.example.mbella.m07_s3_calculator;

public class CalculatorBrain {

    private float display;
    private float acumulador;
    private int operador;
    private boolean rewrite = true;


    public static final int SUMA = 1;
    public static final int RESTA = 2;
    public static final int MULTIPLICA = 3;
    public static final int DIVIDE = 4;
    private static final int IGUAL = 5;
    private static final int NADA = 0;

    public CalculatorBrain(){
        this.reset();
    }


    public void reset() {
        display = 0;
        acumulador = 0;
        operador = CalculatorBrain.NADA;
    }

    public float getDisplay() {
        return display;
    }

    public void setNumber(int n) {
        if (rewrite) { display=0; rewrite = false; }
        display = display*10 + n;
    }

    public void setOperation(int op) {
        updateValue(op);
        operador = op;
        rewrite = true;
    }

    public void result() {
        updateValue(CalculatorBrain.IGUAL);
        operador = CalculatorBrain.NADA;
        rewrite = true;
    }

    private void updateValue(int op) {
        switch (operador){
            case CalculatorBrain.NADA: acumulador = display; break;
            case CalculatorBrain.SUMA: acumulador = acumulador + display; break;
            case CalculatorBrain.RESTA: acumulador = acumulador - display; break;
            case CalculatorBrain.MULTIPLICA: acumulador = acumulador * display; break;
            case CalculatorBrain.DIVIDE: acumulador = acumulador / display; break;
        }
        display = acumulador;
    }
}
