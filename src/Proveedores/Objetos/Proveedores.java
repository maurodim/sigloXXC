/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Proveedores.Objetos;

import Conversores.Numeros;
import Conversores.Textos;
import Proveedores.Interfaces.Proveedable;
import interfaceGraficas.Inicio;
import interfaces.Componable;
import interfaces.Personalizable;
import interfaces.Transaccionable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.table.DefaultTableModel;
import objetos.Articulos;
import objetos.ConeccionLocal;
import objetos.Conecciones;

/**
 *
 * @author mauro
 */
public class Proveedores implements Personalizable,Componable,Proveedable{
    private int numero;
    private String nombre;
    private String direccion;
    private String telefono;
    private String mail;
    private String localidad;
    private int condicionDeIva;
    private String numeroDeCuit;
    private int condicionIngresosBrutos;
    private String numeroIngresosBrutos;
    private Double saldo=0.00;
    private Integer tipo;
    private static ConcurrentHashMap listadoProv=new ConcurrentHashMap();

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

    
    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }
    
    
    public Proveedores(int numero) {
        this.numero = numero;
    }

    public Proveedores() {
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public int getCondicionDeIva() {
        return condicionDeIva;
    }

    public void setCondicionDeIva(int condicionDeIva) {
        this.condicionDeIva = condicionDeIva;
    }

    public String getNumeroDeCuit() {
        return numeroDeCuit;
    }

    public void setNumeroDeCuit(String numeroDeCuit) {
        this.numeroDeCuit = numeroDeCuit;
    }

    public int getCondicionIngresosBrutos() {
        return condicionIngresosBrutos;
    }

    public void setCondicionIngresosBrutos(int condicionIngresosBrutos) {
        this.condicionIngresosBrutos = condicionIngresosBrutos;
    }

    public String getNumeroIngresosBrutos() {
        return numeroIngresosBrutos;
    }

    public void setNumeroIngresosBrutos(String numeroIngresosBrutos) {
        this.numeroIngresosBrutos = numeroIngresosBrutos;
    }
    public static void cargarListadoProv(){
        try {
            listadoProv.clear();
            String sql="";
            Transaccionable tra;
            //if(Inicio.coneccionRemota){
            //    tra=new Conecciones();
            //    sql="select *,(select sum(movimientosproveedores.monto) from movimientosproveedores where pagado=0 and movimientosproveedores.numeroProveedor=proveedores.ID)as saldo from proveedores order by NOMBRE";
            //}else{
                tra=new ConeccionLocal();
                sql="select * from proveedores order by NOMBRE";
            //}
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setSaldo(rr.getDouble("saldo"));
                prov.setTipo(rr.getInt("tipo"));
              //  if(Inicio.coneccionRemota)prov.setSaldo(rr.getDouble("saldo"));
                //prov.setCondicionDeIva(rr.getInt("condicionIva"));
                //prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                //prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                //prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                //System.err.println("PROV "+prov.getNombre());
                listadoProv.putIfAbsent(prov.getNumero(),prov);
            }
            rr.close();
            //if(Inicio.coneccionRemota)BackapearProveedores();
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void cargarListadoProv1(){
        try {
            listadoProv.clear();
            String sql="";
            Transaccionable tra;
            //if(Inicio.coneccionRemota){
                tra=new Conecciones();
                sql="select *,(select sum(movimientosproveedores.monto) from movimientosproveedores where pagado=0 and movimientosproveedores.numeroProveedor=proveedores.ID)as saldo from proveedores order by NOMBRE";
            //}else{
                //tra=new Conecciones();
                //sql="select * from proveedores order by NOMBRE";
            //}
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setSaldo(rr.getDouble("saldo"));
                prov.setTipo(rr.getInt("tipo"));
              //  if(Inicio.coneccionRemota)prov.setSaldo(rr.getDouble("saldo"));
                //prov.setCondicionDeIva(rr.getInt("condicionIva"));
                //prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                //prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                //prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                //System.err.println("PROV "+prov.getNombre());
                listadoProv.putIfAbsent(prov.getNumero(),prov);
            }
            rr.close();
            //if(Inicio.coneccionRemota)BackapearProveedores();
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void BackapearProveedores(){
        //ArrayList listado=new ArrayList();
        if(Inicio.coneccionRemota){
            cargarListadoProv1();
        }else{
            cargarListadoProv();
        }
        Personalizable per=new Proveedores();
        Iterator ilP=per.listar().listIterator();
        Proveedores proveedores=new Proveedores();
        Transaccionable tra=new ConeccionLocal();
        String sql="delete from proveedores";
        tra.guardarRegistro(sql);
        while(ilP.hasNext()){
            proveedores=(Proveedores)ilP.next();
            sql="insert into proveedores (id,nombre,domicilio,localidad,telefono,inhabilitado,numero,mail) values ("+proveedores.getNumero()+",'"+proveedores.getNombre()+"','"+proveedores.getDireccion()+"','"+proveedores.getLocalidad()+"','"+proveedores.getTelefono()+"',0,"+proveedores.getNumero()+",'"+proveedores.getMail()+"')";
            //System.out.println("PROVEEDORES backapearProveedores---"+sql);
            tra.guardarRegistro(sql);
        }
    }
    public ArrayList listarPorTipo(int tip){
         ArrayList listado=new ArrayList();
        try {
            String sql="select *,(select sum(monto) from movimientosproveedores where movimientosproveedores.numeroproveedor=proveedores.numero)as saldoP from proveedores where tipo="+tip+" order by nombre";
            
            System.out.println(sql);
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setSaldo(rr.getDouble("saldoP"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */
                listado.add(prov);
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
    @Override
    public Boolean agregar(Object objeto) {
       Proveedores prov=(Proveedores)objeto;
       Boolean veri=false;
       String sql="insert into proveedores (NOMBRE,DOMICILIO,LOCALIDAD,TELEFONO,mail,tipo) values ('"+Textos.EliminarCaracteresRaros(prov.getNombre())+"','"+prov.getDireccion()+"','"+prov.getLocalidad()+"','"+prov.getTelefono()+"','"+prov.getMail()+"',"+prov.getTipo()+")";
       Transaccionable tra=new Conecciones();
       if(tra.guardarRegistro(sql)){
           int numero=0;
           sql="select LAST_INSERT_ID()";
           ResultSet rs=tra.leerConjuntoDeRegistros(sql);
            try {
                while(rs.next()){
                    numero=rs.getInt(1);
                }
                rs.close();
                prov.setNumero(numero);
                sql="update proveedores set id=numero";
                tra.guardarRegistro(sql);
                listadoProv.putIfAbsent(numero,prov);
            } catch (SQLException ex) {
                Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
            }
       }else{
           veri=false;
       }
       
       
       return veri;
    }

    @Override
    public Boolean modificar(Object objeto) {
       Boolean veri=false;
       Proveedores prov=(Proveedores)objeto;
       String sql="update proveedores set NOMBRE='"+prov.getNombre()+"',tipo="+prov.getTipo()+",DOMICILIO='"+prov.getDireccion()+"',LOCALIDAD='"+prov.getLocalidad()+"',TELEFONO='"+prov.getTelefono()+"',mail='"+prov.getMail()+"' where numero="+prov.getNumero();
       Transaccionable tra=new Conecciones();
       if(tra.guardarRegistro(sql)){}else{
           veri=false;
       }
       
       return veri;
    }

    @Override
    public Boolean eliminar(Object objeto) {
        Boolean veri=false;
        Proveedores prov=(Proveedores)objeto;
        String sql="update proveedores set INHABILITADO=1 where numero="+prov.getNumero();
        Transaccionable tra=new Conecciones();
        if(tra.guardarRegistro(sql)){}else{
            veri=false;
        }
        
        return veri;
    }

    @Override
    public Object buscarPorNumero(Integer id) {
        Proveedores prov=new Proveedores();
        try {
            String sql="select * from proveedores where numero="+id;
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                prov.setNumero(rr.getInt("ID"));
                prov.setNombre(rr.getString("nombre"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setTipo(rr.getInt("tipo"));
                //prov.setCondicionDeIva(rr.getInt("condicionIva"));
                //prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                //prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                //prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prov;
    }

    @Override
    public Object buscarPorNombre(String nombre) {
        Proveedores prov=new Proveedores();
        try {
            String sql="select * from proveedores where nombre like '%"+nombre+"%' order by nombre";
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */ 
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prov;
    }

    @Override
    public Object buscarPorCuit(String cuit) {
        Proveedores prov=new Proveedores();
        try {
            String sql="select * from proveedores where cuit like '"+cuit+"%'";
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */ 
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prov;
    }

    @Override
    public ArrayList listar() {
        ArrayList listado=new ArrayList();
        try {
            String sql="select *,(select sum(monto) from movimientosproveedores where movimientosproveedores.numeroproveedor=proveedores.numero)as saldoP from proveedores order by nombre";
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setSaldo(rr.getDouble("saldoP"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */
                listado.add(prov);
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }

    @Override
    public ArrayList listarPorNombre(String nombre) {
        ArrayList listado=new ArrayList();
        try {
            String sql="select * from proveedores where NOMBRE like '%"+nombre+"%' order by nombre";
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */
                listado.add(prov);
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }

    @Override
    public ArrayList listarPorCuit(String cuit) {
        ArrayList listado=new ArrayList();
        try {
            String sql="select * from proveedores where cuit like '"+cuit+"%' order by nombre";
            Transaccionable tra=new Conecciones();
            ResultSet rr=tra.leerConjuntoDeRegistros(sql);
            while(rr.next()){
                Proveedores prov=new Proveedores();
                prov.setNumero(rr.getInt("numero"));
                prov.setNombre(rr.getString("NOMBRE"));
                prov.setDireccion(rr.getString("DOMICILIO"));
                prov.setLocalidad(rr.getString("LOCALIDAD"));
                prov.setMail(rr.getString("mail"));
                prov.setTelefono(rr.getString("TELEFONO"));
                prov.setTipo(rr.getInt("tipo"));
                /*
                prov.setCondicionDeIva(rr.getInt("condicionIva"));
                prov.setNumeroDeCuit(rr.getString("numeroCuit"));
                prov.setCondicionIngresosBrutos(rr.getInt("condicionIb"));
                prov.setNumeroIngresosBrutos(rr.getString("numeroIb"));
                */
                listado.add(prov);
            }
            rr.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Proveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }

    @Override
    public DefaultListModel LlenarList(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTabla(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ComboBoxModel LlenarCombo(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultListModel LlenarListConArray(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTablaConArray(ArrayList listado) {
        DefaultTableModel modelo=new DefaultTableModel();
        Iterator it=listado.listIterator();
        modelo.addColumn("id");
        modelo.addColumn("nombre");
        modelo.addColumn("saldo");
        modelo.addColumn("tipo");
        Object [] fila=new Object[4];
        Proveedores proveedor;
        while(it.hasNext()){
            proveedor=(Proveedores)it.next();
            fila[0]=String.valueOf(proveedor.getNumero());
            fila[1]=proveedor.getNombre();
            fila[2]=Numeros.ConvetirNumeroDosDigitos(proveedor.getSaldo());
            if(proveedor.getTipo()==1){
                fila[3]="Gastos Fijos";
            }else{
                fila[3]="";
            }
            modelo.addRow(fila);
        }
        return modelo;
    }

    @Override
    public ComboBoxModel LlenarComboConArray(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int posicionEnCombo(Object objeto, ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTablaConArrayEnDolares(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTablaConArrayEnMonedas(ArrayList listado, Object moneda) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double AjusteDeSaldo(Object objeto,Double saldoA) {
       
        Proveedores fact=(Proveedores) objeto;
        String sql="insert into movimientosproveedores (numeroProveedor,monto,numeroComprobante,idRemito,idUsuario,tipoComprobante,idSucursal,pagado) values ("+fact.getNumero()+","+saldoA+",'000',0,"+Inicio.usuario.getNumeroId()+",5,1,1)";
        Transaccionable tra=new Conecciones();
        tra.guardarRegistro(sql);
        
       return null;
    }
    
    
}
