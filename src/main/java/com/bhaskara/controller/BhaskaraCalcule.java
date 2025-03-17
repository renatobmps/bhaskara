package com.bhaskara.controller;

public class BhaskaraCalcule {

    private String a;
    private String b;
    private String c;

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public double getDelta() {
        try {
            double dA, dB, dC;
            dA = Double.parseDouble(a);
            dB = Double.parseDouble(b);
            dC = Double.parseDouble(c);
            double delta = (dB * dB) - 4 * dA * dC;
            return delta;
        } catch (Exception e) {
            return 0;
        }
    }

    public String getRaizPositiva() {

        try {
            double dA, dB, dC;
            dA = Double.parseDouble(a);
            dB = Double.parseDouble(b);
            dC = Double.parseDouble(c);

            if (getDelta() < 0) {
                return "Delta é negativo";
            } else {
                double rP;
                rP = ((-dB + Math.sqrt(getDelta())) / (2 * dA));
                return String.valueOf(rP);
            }

        } catch (Exception e) {
            return "Erro";
        }
    }

    public String getRaizNegativa() {

        try {
            double dA, dB, dC;
            dA = Double.parseDouble(a);
            dB = Double.parseDouble(b);
            dC = Double.parseDouble(c);

            if (getDelta() < 0) {
                return "Delta é negativo";
            } else {
                double rP;
                rP = ((-dB - Math.sqrt(getDelta())) / (2 * dA));
                return String.valueOf(rP);
            }

        } catch (Exception e) {
            return "Erro";
        }
    }
}
