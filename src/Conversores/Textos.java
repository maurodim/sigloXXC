/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Conversores;

import java.util.ArrayList;

/**
 *
 * @author mauro
 */
public class Textos {
    public static ArrayList ProcesarTextos(String ttx,String divisor){
        ArrayList resultado=new ArrayList();
        String res=ttx.trim();
             
        return resultado;
    }
    public static String EliminarCaracteresRaros(String ttx){
        String resultado=ttx;
        resultado=resultado.replaceAll("'"," ");
        resultado=resultado.replaceAll("/", "-");
        resultado=resultado.replaceAll("&","-");
        return resultado;
    }
}
