/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAW210
 */
public class tiro {
    public int vInicial;
    public int angulo;
    public static final double GRAVEDAD = 9.8;
    public double alcanceMax;
    public double alturaMax;

    public tiro(int vInicial, int angulo) {
        this.vInicial = vInicial;
        this.angulo = angulo; 
        this.alcanceMax =(Math.pow(vInicial, 2))*(Math.sin(Utilidades.getGradosRadianes(angulo)))/GRAVEDAD ;
        this.alturaMax = (Math.pow(vInicial, 2))*(Math.pow(Math.sin(Utilidades.getGradosRadianes(angulo)), 2))/(2*GRAVEDAD);
    }

    public int getvInicial() {
        return vInicial;
    }

    public void setvInicial(int vInicial) {
        this.vInicial = vInicial;
    }

    public int getAngulo() {
        return angulo;
    }

    public void setAngulo(int angulo) {
        this.angulo = angulo;
    }

    public double getAlcanceMax() {
        return alcanceMax;
    }

    public void setAlcanceMax(double alcanceMax) {
        this.alcanceMax = alcanceMax;
    }

    public double getAlturaMax() {
        return alturaMax;
    }

    public void setAlturaMax(double alturaMax) {
        this.alturaMax = alturaMax;
    }
    
    
}
