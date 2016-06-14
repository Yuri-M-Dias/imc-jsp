package calc.model;

/**
 * Created by Yuri on 08-Jun-16.
 */
public class FormatoIMCResposta {

    private String message;
    private double imc;

    public FormatoIMCResposta(){
        this.message = "";
        this.imc = 0;
    }

    public void calculaIMC(double peso, double altura, String sexo) {
        // Cálculo que ignora o sexo
        imc = peso / (altura * altura);

        message = "";
        if (imc < 17) {
            message = "Está muito abaixo do peso!";
        }
        if (imc >= 17 && imc < 18.5) {
            message = "Está abaixo do peso!";
        }
        if (imc >= 18.5 && imc < 25) {
            message = "Está com peso normal!";
        }
        if (imc >= 25 && imc < 30) {
            message = "Está acima do peso!";
        }
        if (imc >= 30 && imc < 35) {
            message = "Está com obesidade I!";
        }
        if (imc >= 35 && imc < 40) {
            message = "Está com obesidade II (severa)!";
        }
        if (imc >= 40) {
            message = "Está com obesidade III (mórbida)!";
        }
        System.out.println("IMC: " + imc + " sendo " + message);

    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public double getImc() {
        return imc;
    }

    public void setImc(double imc) {
        this.imc = imc;
    }

}
