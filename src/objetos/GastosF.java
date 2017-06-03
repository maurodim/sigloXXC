/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package objetos;

import Compras.Proveedores;
import Conversores.Numeros;
import interfaceGraficas.Inicio;
import interfaces.Componable;
import interfaces.Editables;
import interfaces.Transaccionable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author mauro
 */
public class GastosF implements Editables,Componable{
    private Integer id;
    private Integer proveedor;
    private Double monto;
    private Date fechaVencimiento;
    private static ConcurrentHashMap listadoVencimientos=new ConcurrentHashMap();
    private String numeroFactura;
    private static Integer numeroComprobanteInt;
    private Integer pediodo;
    private Integer habilitado;
    private Integer pagado;

    public Integer getProveedor() {
        return proveedor;
    }

    public void setProveedor(Integer proveedor) {
        this.proveedor = proveedor;
    }

    public Integer getPediodo() {
        return pediodo;
    }

    public void setPediodo(Integer pediodo) {
        this.pediodo = pediodo;
    }

    public Integer getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Integer habilitado) {
        this.habilitado = habilitado;
    }

    public Integer getPagado() {
        return pagado;
    }

    public void setPagado(Integer pagado) {
        this.pagado = pagado;
    }
    
    

    public String getNumeroFactura() {
        return numeroFactura;
    }

    public void setNumeroFactura(String numeroFactura) {
        this.numeroFactura = numeroFactura;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }
    
    public static void cargarMap(){
      String sql="select * from gastofijos where pagado=0";
      Transaccionable tra;
      
      if(Inicio.coneccionRemota){
          tra=new Conecciones();
      
      GastosF gastos;
      ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            Integer id=0;
            listadoVencimientos.clear();
            while(rs.next()){
                id=rs.getInt("id");
                gastos=new GastosF();
                gastos.setFechaVencimiento(rs.getDate("fechaVencimiento"));
                gastos.setId(id);
                gastos.setMonto(rs.getDouble("monto"));
                //gastos.setNumeroFactura(rs.getString("numeroFactura"));
                gastos.setProveedor(rs.getInt("idProveedor"));
                gastos.setHabilitado(rs.getInt("habilitado"));
                gastos.setPagado(rs.getInt("pagado"));
                gastos.setPediodo(rs.getInt("periodo"));
                listadoVencimientos.putIfAbsent(id,gastos);
                
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
        }
      }
    }
    private void ActualizarComprobante(){
        String sql="update tipocomprobantes set numeroActivo="+numeroComprobanteInt+" where numero=13";
        Transaccionable tra=new Conecciones();
        tra.guardarRegistro(sql);
        
        
    }
    private static void LeerComprobante(){
       String sql="select * from tipocomprobantes where numero=13";
       Transaccionable tra=new Conecciones();
       ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            while(rs.next()){
                numeroComprobanteInt=rs.getInt("numeroActivo");
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public Boolean AltaObjeto(Object objeto) {
        Boolean verif=false;
        GastosF gastos=(GastosF)objeto;
        String fecha=Numeros.ConvertirFecha(gastos.getFechaVencimiento());
        String sql="insert into gastofijos (idProveedor,monto,fechaVencimiento,periodo) values ("+gastos.getProveedor()+","+gastos.getMonto()+",'"+fecha+"','"+gastos.getPediodo()+"')";
        Transaccionable tra=new Conecciones();
        verif=tra.guardarRegistro(sql);
        /*
        if(tra.guardarRegistro(sql)){
            verif=true;
            sql="select LAST_INSERT_ID()";
            ResultSet rs=tra.leerConjuntoDeRegistros(sql);
            Integer id=0;
            try {
                while(rs.next()){
                id=rs.getInt(1);
                    
                }
                rs.close();
                sql="insert into movimientosproveedores (numeroProveedor,monto,pagado,idRemito,idUsuario,idCaja,fechaPago,tipoComprobante,numeroComprobante) values ("+gastos.getProveedor()+","+gastos.getMonto()+",0,0,"+Inicio.usuario.getNumeroId()+","+Inicio.caja.getNumero()+",'"+Inicio.fechaDia+"',13,"+numeroComprobanteInt+")";
                tra.guardarRegistro(sql);
            } catch (SQLException ex) {
                Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
            }
            listadoVencimientos.put(id, gastos);
        }
        */
        
        return verif;
    }

    @Override
    public Boolean ModificaionObjeto(Object objeto) {
       Boolean verif=false;
       LeerComprobante();
       numeroComprobanteInt++;
       GastosF gastos=(GastosF)objeto;
       String sql="insert into movimientosproveedores (numeroProveedor,monto,pagado,idRemito,idUsuario,idCaja,fechaPago,tipoComprobante,numeroComprobante) values ("+gastos.getProveedor()+","+gastos.getMonto()+",1,0,"+Inicio.usuario.getNumeroId()+","+Inicio.caja.getNumero()+",'"+Inicio.fechaDia+"',13,"+numeroComprobanteInt+")";
       Transaccionable tra=new Conecciones();
       verif=tra.guardarRegistro(sql);
       
       
       sql="insert into movimientoscaja (numeroUsuario,numeroSucursal,numeroComprobante,tipoComprobante,monto,tipoMovimiento,idCaja,idCliente,tipoCliente,pagado) values ("+Inicio.usuario.getNumeroId()+","+Inicio.sucursal.getNumero()+","+numeroComprobanteInt+",13,"+gastos.getMonto()+",11,"+Inicio.caja.getNumero()+","+gastos.getProveedor()+",2,1)";
       verif=tra.guardarRegistro(sql);
       sql="update gastofijos set pagado="+gastos.getPagado()+",fechaPago='"+Inicio.fechaDia+"',idCaja="+Inicio.caja.getNumero()+" where id="+gastos.getId();
       verif=tra.guardarRegistro(sql);
       ActualizarComprobante();
       
       return verif;
    }

    @Override
    public Boolean EliminacionDeObjeto(Object objeto) {
        Boolean verif=false;
        GastosF gastos=(GastosF)objeto;
        String sql="delete gastofijos where id="+gastos.getId();
        Transaccionable tra=new Conecciones();
        if(tra.guardarRegistro(sql)){
            verif=true;
            listadoVencimientos.remove(gastos.getId());
        }
        
        return verif;
    }

    @Override
    public Boolean MovimientoDeAjusteDeCantidades(Object objeto, Double cantidadMovimiento, String observaciones) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public ArrayList ListarPorSucursal(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
    
}
