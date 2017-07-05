/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package GastosFijos.Objetos;

import Proveedores.Objetos.Proveedores;
import Conversores.Numeros;
import interfaceGraficas.Inicio;
import interfaces.Componable;
import interfaces.Editables;
import interfaces.Personalizable;
import interfaces.Transaccionable;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.table.DefaultTableModel;
import objetos.Conecciones;

/**
 *
 * @author mauro
 */
public class GastosF implements Editables,Componable,Personalizable{
    private Integer id;
    private Integer proveedor;
    private Double monto;
    private String fechaVencimiento;
    private static ConcurrentHashMap listadoVencimientos=new ConcurrentHashMap();
    private String numeroFactura;
    private static Integer numeroComprobanteInt;
    private Integer pediodo;
    private Integer habilitado;
    private Integer pagado;
    private String nombreProveedor;

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }
    

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

    public String getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(String fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }
    
    public static void cargarMap(){
      String sql="select * from gastofijos where pagado=0 order by fechaVencimiento";
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
                gastos.setFechaVencimiento(rs.getString("fechaVencimiento"));
                gastos.setId(id);
                gastos.setMonto(rs.getDouble("monto"));
                //gastos.setNumeroFactura(rs.getString("numeroFactura"));
                gastos.setProveedor(rs.getInt("idProveedore"));
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
    public Boolean pagar(Object objeto){
        Boolean verif=false;
        GastosF gasto=new GastosF();
        gasto=(GastosF) objeto;
        String sql="insert into movimientoscaja (numeroUsuario,numeroSucursal,numeroComprobante,tipoComprobante,monto,tipoMovimiento,idCaja,idCliente,tipoCliente,pagado) values ("+Inicio.usuario.getNumeroId()+","+Inicio.sucursal.getNumero()+","+gasto.getNumeroFactura()+",13,-"+gasto.getMonto()+",16,"+Inicio.caja.getNumero()+","+gasto.getProveedor()+",2,1)";
        Transaccionable tra=new Conecciones();
        tra.guardarRegistro(sql);
        sql="update gastofijos set pagado=1 where id="+gasto.getId();
        tra.guardarRegistro(sql);
        Double montt=gasto.getMonto() * -1;
        sql="insert into movimientosproveedores (numeroProveedor,monto,pagado,idRemito,idUsuario,idCaja,fechaPago,tipoComprobante,numeroComprobante) values ("+gasto.getProveedor()+","+montt+",1,0,"+Inicio.usuario.getNumeroId()+","+Inicio.caja.getNumero()+",'"+Inicio.fechaDia+"',13,"+gasto.getNumeroFactura()+")";
        tra.guardarRegistro(sql);
        verif=true;
        return verif;
    }
    public ArrayList listarVencimientosDeHoy(){
        ArrayList listado=new ArrayList();
        String sql="select *,(select proveedores.nombre from proveedores where proveedores.numero=gastofijos.idproveedore)as nombreP from gastoFijos where fechaVencimiento like '"+Inicio.fechaDia+"%' and pagado=0";
        Transaccionable tra=new Conecciones();
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            GastosF gasto;
            while(rs.next()){
                gasto=new GastosF();
                gasto=new GastosF();
                gasto.setId(rs.getInt("id"));
                gasto.setProveedor(rs.getInt("idproveedore"));
                gasto.setNombreProveedor(rs.getString("nombreP"));
                gasto.setFechaVencimiento(rs.getString("fechavencimiento"));
                gasto.setPediodo(rs.getInt("periodo"));
                gasto.setHabilitado(rs.getInt("habilitado"));
                gasto.setMonto(rs.getDouble("monto"));
                gasto.setPagado(rs.getInt("pagado"));
                listado.add(gasto);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            return listado;
        }
    }
    @Override
    public Boolean AltaObjeto(Object objeto) {
        Boolean verif=false;
        GastosF gastos=(GastosF)objeto;
        //String fecha=Numeros.ConvertirFecha(gastos.getFechaVencimiento());
        String sql="insert into gastofijos (idProveedore,monto,fechaVencimiento,periodo) values ("+gastos.getProveedor()+","+gastos.getMonto()+",'"+gastos.getFechaVencimiento()+"','"+gastos.getPediodo()+"')";
        Transaccionable tra=new Conecciones();
        //verif=tra.guardarRegistro(sql);
        
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
                System.out.println(sql);
                tra.guardarRegistro(sql);
                //sql="insert into movimientosgastosfijos (";
            } catch (SQLException ex) {
                Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
            }
            listadoVencimientos.put(id, gastos);
        }
        
        
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
       /*
       verif=tra.guardarRegistro(sql);
       
       
       sql="insert into movimientoscaja (numeroUsuario,numeroSucursal,numeroComprobante,tipoComprobante,monto,tipoMovimiento,idCaja,idCliente,tipoCliente,pagado) values ("+Inicio.usuario.getNumeroId()+","+Inicio.sucursal.getNumero()+","+numeroComprobanteInt+",13,"+gastos.getMonto()+",11,"+Inicio.caja.getNumero()+","+gastos.getProveedor()+",2,1)";
       verif=tra.guardarRegistro(sql);
               */
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
        DefaultTableModel modelo=new DefaultTableModel();
        Iterator it=listado.listIterator();
        GastosF gasto;
        modelo.addColumn("Proveedor");
        modelo.addColumn("Vencimiento");
        //modelo.addColumn("Pediodo");
        modelo.addColumn("Pagado");
        Object [] fila=new Object[3];
        while(it.hasNext()){
            gasto=(GastosF) it.next();
            fila[0]=gasto.getNombreProveedor();
            fila[1]=gasto.getFechaVencimiento();
            //fila[2]=gasto.getPediodo()+" meses";
            if(gasto.getPagado()==1){
                fila[2]="PAGADO";
            }else{
                fila[2]="S/PAGO";
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
    public Boolean agregar(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean modificar(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean eliminar(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorNumero(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorNombre(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorCuit(String cuit) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList listar() {
        String sql="select *,(select proveedores.nombre from proveedores where proveedores.numero=gastofijos.idproveedore)as nombreP from gastofijos order by fechavencimiento";
        ArrayList listado=new ArrayList();
        Transaccionable tra=new Conecciones();
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            GastosF gasto;
            while(rs.next()){
                gasto=new GastosF();
                gasto.setId(rs.getInt("id"));
                gasto.setProveedor(rs.getInt("idproveedore"));
                gasto.setNombreProveedor(rs.getString("nombreP"));
                gasto.setFechaVencimiento(rs.getString("fechaVencimiento"));
                gasto.setPediodo(rs.getInt("periodo"));
                gasto.setHabilitado(rs.getInt("habilitado"));
                gasto.setMonto(rs.getDouble("monto"));
                gasto.setPagado(rs.getInt("pagado"));
                listado.add(gasto);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listado;
    }

    @Override
    public ArrayList listarPorNombre(String nombre) {
        String sql="select *,(select proveedores.nombre from proveedores where proveedores.numero=gastofijos.idproveedore)as nombreP from gastofijos where pagado=0 order by fechavencimiento";
        ArrayList listado=new ArrayList();
        Transaccionable tra=new Conecciones();
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            GastosF gasto;
            while(rs.next()){
                gasto=new GastosF();
                gasto.setId(rs.getInt("id"));
                gasto.setProveedor(rs.getInt("idproveedore"));
                gasto.setNombreProveedor(rs.getString("nombreP"));
                gasto.setPediodo(rs.getInt("periodo"));
                gasto.setHabilitado(rs.getInt("habilitado"));
                gasto.setFechaVencimiento(rs.getString("fechaVencimiento"));
                gasto.setMonto(rs.getDouble("monto"));
                gasto.setPagado(rs.getInt("pagado"));
                listado.add(gasto);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(GastosF.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listado;
    }

    @Override
    public ArrayList listarPorCuit(String cuit) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
