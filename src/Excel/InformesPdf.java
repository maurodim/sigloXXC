/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Excel;

import Configuracion.Propiedades;
import Conversores.Numeros;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfName;
import com.itextpdf.text.pdf.PdfWriter;
import interfaceGraficas.Inicio;
import interfaces.Transaccionable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import objetos.ConeccionLocal;
import objetos.Mail;

/**
 *
 * @author mauro
 */
public class InformesPdf {
    private String fechaDesde;
    private String fechaHasta;

    public String getFechaDesde() {
        return fechaDesde;
    }

    public void setFechaDesde(String fechaDesde) {
        this.fechaDesde = fechaDesde;
    }

    public String getFechaHasta() {
        return fechaHasta;
    }

    public void setFechaHasta(String fechaHasta) {
        this.fechaHasta = fechaHasta;
    }
    
    public void InformeBalanceDeFechas(String desde,String hasta){
        Document documento=new Document();
        documento.setPageSize(PageSize.A4.rotate());
        int i=1;
        String arch=desde+"_"+hasta+"_Balance.pdf";
        
        
        File fich=new File(arch);
        
        FileOutputStream fichero;
        try {
            pdfsJavaGenerador pdf;
            
            ArrayList listado=new ArrayList();
            //String sql="select * from movimientoscaja where fecha between '"+desde+"' and '"+hasta+"' order by fecha desc";
            String sql="select fecha,id,tipoMovimiento,sum(monto)as total,(select tipomovimientos.descripcion from tipomovimientos where tipomovimientos.id=movimientoscaja.tipomovimiento)as movimientos,(select tipomovimientos.multiploop from tipomovimientos where tipomovimientos.id=movimientoscaja.tipomovimiento)as multiplo from movimientoscaja where fecha between '"+desde+"' and '"+hasta+"' group by tipoMovimiento order by tipomovimiento";
            System.out.println(sql);
            Transaccionable tra=new ConeccionLocal();
            ResultSet rs=tra.leerConjuntoDeRegistros(sql);
            String totalVentas="TOTAL VENTAS: ";
            String totalGastos="TOTAL GASTOS: ";
            String totalProveedores="TOTAL PAGOS A PROVEEDORES: ";
            String totalGastosFijos="TOTAL GASTOS FIJOS";
            
            Double ventas=0.00;
            Double gastos=0.00;
            Double provee=0.00;
            Double compras=0.00;
            Double gastoFijo=0.00;
            String linea;
            while(rs.next()){
                switch (rs.getInt("tipoMovimiento")){
                    case 1:
                       ventas= ventas+rs.getDouble("total");
                        break;
                    case 2:
                        compras=compras + rs.getDouble("total");
                        break;
                    case 11:
                        provee=provee+rs.getDouble("total");
                        break;
                    case 12:
                        gastos=gastos+rs.getDouble("total");
                        break;
                    case 16:
                        gastoFijo=gastoFijo+rs.getDouble("total");
                        break;
                        
            }
                
                //listado.add(linea);
            }
            rs.close();
            Integer totalItems=listado.size();
            Integer totalPaginas=totalItems /46;
            Integer contadorPaginas=1;
            totalPaginas=totalPaginas + 1;
            System.out.println(" items "+totalItems+" paginas "+totalPaginas);
            fichero=new FileOutputStream(arch);
            PdfWriter writer=PdfWriter.getInstance(documento, fichero);
            
            documento.open();
            //writer.addPageDictEntry(PdfName.ROTATE,PdfPage.SEASCAPE);
            writer.addPageDictEntry(PdfName.ROTATE,null);
            PdfContentByte cb=writer.getDirectContent();
            
            BaseFont bf = BaseFont.createFont(BaseFont.COURIER_BOLD,BaseFont.CP1252,BaseFont.NOT_EMBEDDED);
            cb.setFontAndSize(bf,12);
            cb.beginText();
            //cb.setTextMatrix(250,820);
            //cb.showText("Subdiario de IVA Ventas");
            cb.setFontAndSize(bf,10);
            
            
            cb.setTextMatrix(20,480);
            cb.showText("Periodo "+desde+" hasta "+hasta);
            cb.setTextMatrix(500,480);
            cb.showText("BALANCE "+Propiedades.getNOMBRECOMERCIO());
            //cb.setTextMatrix(750,550);
            //cb.showText("Hoja "+contadorPaginas+" de "+totalPaginas);
            
            int renglon=460;
            String vencimiento;
            String descripcion;
            String monto;
            String recargo;
            String total;
            String totalFinal;
            Double tot=0.00;
            String razonSocial;
            int itt=0;
            //aca empieza la iteracion
            
            //encabezados
            bf = BaseFont.createFont(BaseFont.COURIER_BOLD,BaseFont.CP1252,BaseFont.NOT_EMBEDDED);
            cb.setFontAndSize(bf,8);
            cb.setTextMatrix(20,renglon);
                
                cb.showText("Descripcion");
                cb.setTextMatrix(700,renglon);
                //tot=saldo.getCantidad() * saldo.getPrecioUnitario();
                cb.showText("Total");
                
                renglon=renglon - 20;
            
            //fin encabezados
            bf = BaseFont.createFont(BaseFont.COURIER,BaseFont.CP1252,BaseFont.NOT_EMBEDDED);
            cb.setFontAndSize(bf,6);
                
                
                
                cb.setTextMatrix(20,renglon);
                cb.showText(totalVentas);
                
                cb.setTextMatrix(700,renglon);
                cb.showText(Numeros.ConvertirNumero(ventas));
                renglon=renglon - 10;
                
                cb.setTextMatrix(20,renglon);
                cb.showText(totalGastos);
                
                cb.setTextMatrix(700,renglon);
                cb.showText(Numeros.ConvertirNumero(gastos));
                renglon=renglon - 10;
                
                cb.setTextMatrix(20,renglon);
                cb.showText(totalGastosFijos);
                
                cb.setTextMatrix(700,renglon);
                cb.showText(Numeros.ConvertirNumero(gastoFijo));
                renglon=renglon - 10;
                
                cb.setTextMatrix(20,renglon);
                cb.showText(totalProveedores);
                
                cb.setTextMatrix(700,renglon);
                cb.showText(Numeros.ConvertirNumero(provee));
                renglon=renglon - 10;
                cb.setTextMatrix(20,renglon);
                cb.showText("TOTAL COMPRAS: ");
                
                cb.setTextMatrix(700,renglon);
                cb.showText(Numeros.ConvertirNumero(compras));
                renglon=renglon - 20;
                
                
            
            
            Double gastosG=gastos + provee+compras+ gastoFijo;
            Double montoCIva=ventas + gastosG;
            
            bf = BaseFont.createFont(BaseFont.COURIER_BOLD,BaseFont.CP1252,BaseFont.NOT_EMBEDDED);
                    cb.setFontAndSize(bf,7);
                    cb.setTextMatrix(20,renglon);
                    cb.showText("Total:");
                    cb.setTextMatrix(700,renglon);
                    cb.showText(Numeros.ConvetirNumeroDosDigitos(montoCIva));
                    
            
                    
            cb.endText();
            documento.close();
            
            File f=new File(arch);
            if(f.exists()){
            
                Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler "+arch);
                Mail mail=new Mail();
                mail.setDetalleListado(Inicio.fechaDia+"Balance General.pdf");
                
                mail.setDireccionFile(arch);
                mail.setAsunto("Resumen de Balance General "+Inicio.fechaDia+" Sucursal: "+Propiedades.getNOMBRECOMERCIO());
                mail.enviarMailBalance();
            }
            int confirmacion=0;
            /*
            if(doc.getArchivo().isEmpty()){
                
            }else{
                confirmacion=JOptionPane.showConfirmDialog(null, "DESEA NOTIFICAR POR MAIL?");
            if(confirmacion==0){
                //JOptionPane.showMessageDialog(null,"acepto");
                
            }
            }
                    */
            System.out.println("eligio "+confirmacion);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(pdfsJavaGenerador.class.getName()).log(Level.SEVERE, null, ex);
            
        } catch (DocumentException ex) {
            Logger.getLogger(pdfsJavaGenerador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(pdfsJavaGenerador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(pdfsJavaGenerador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(InformesPdf.class.getName()).log(Level.SEVERE, null, ex);
        }
        
     
    }
}
