/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author DAW210
 */
public class Utilidades {
    public static ArrayList<String> getAngulos() {
        ArrayList<String> angulos = new ArrayList<String>();
        for (int i = 0; i <= 18; i++) {

            angulos.add(String.valueOf(10 * i));

        }
        return angulos;
    }
     public static double getGradosRadianes(int angulo) {
         double radianes=angulo*Math.PI/180;
        
        return radianes;
    }
}
