package com.bhaskara.services;

import com.bhaskara.services.BhaskaraCalcule.DeltaEnum;

public class BhaskaraCalcule {

    private String deltaA;
    private String deltaB;
    private String deltaC;
    private final String ERROR_DELTA_NEGATIVE = "Delta é negativo";

    public String getDeltaA() {
        return deltaA;
    }

    public void setDeltaA(String value) {
        this.deltaA = value;
    }

    public String getDeltaB() {
        return deltaB;
    }

    public void setDeltaB(String value) {
        this.deltaB = value;
    }

    public String getDeltaC() {
        return deltaC;
    }

    public void setDeltaC(String value) {
        this.deltaC = value;
    }

    public double getDelta() {
        try {
            double deltaADouble = Double.parseDouble(getDeltaA());
            double deltaBDouble = Double.parseDouble(getDeltaB());
            double deltaCDouble = Double.parseDouble(getDeltaC());

            return (deltaBDouble * deltaBDouble) - 4 * deltaADouble * deltaCDouble;
        } catch (RuntimeException e) {
            return 0;
        }
    }

    public String getPositivePath() {
        try {
            if (getDelta() < 0) {
                return this.ERROR_DELTA_NEGATIVE;
            }

            return String.valueOf(getDeltaCalc(DeltaEnum.POSITIVE));

        } catch (RuntimeException error) {
            return error.getMessage();
        }
    }

    public String getNegativePath() {
        try {
            if (getDelta() < 0) {
                return this.ERROR_DELTA_NEGATIVE;
            }

            return String.valueOf(getDeltaCalc(DeltaEnum.NEGATIVE));

        } catch (RuntimeException error) {
            return error.getMessage();
        }
    }

    enum DeltaEnum {
        POSITIVE,
        NEGATIVE,
    }

    private Double getDeltaCalc(DeltaEnum operation) {
        double deltaADouble = Double.parseDouble(getDeltaA());
        double deltaBDouble = Double.parseDouble(getDeltaB());

        if (operation == DeltaEnum.NEGATIVE) {
            return ((-deltaBDouble - Math.sqrt(getDelta())) / (2 * deltaADouble));
        }

        return ((-deltaBDouble + Math.sqrt(getDelta())) / (2 * deltaADouble));
    }
}
