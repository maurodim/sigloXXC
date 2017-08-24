/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package objetos;

import Configuracion.Propiedades;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author Administrador
 */
public class Mail {
    private final Properties propiedades=new Properties();
    private String password="SUtter001";
    private String correo=Propiedades.getCORREOSALIENTE().trim();
    private String hosts=Propiedades.getHOSTS().trim();
    private Integer puerto=Integer.parseInt(Propiedades.getPUERTO().trim());
    private Session sesion;
    private String direccionFile;
    private String detalleListado;
    private String detalleListado1;
    private String direccionFile1;
    private String asunto;

    public void setDireccionFile1(String direccionFile1) {
        this.direccionFile1 = direccionFile1;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public void setDetalleListado1(String detalleListado1) {
        this.detalleListado1 = detalleListado1;
    }

    
    public void setDetalleListado(String detalleListado) {
        this.detalleListado = detalleListado;
    }
    
    
    public void setDireccionFile(String direccionFile) {
        this.direccionFile = direccionFile;
    }
    
    private void init(){
        propiedades.put("mail.smtp.host","mail.bambusoft.com.ar");
        propiedades.put("mail.smtp.starttls.enable","false");
        propiedades.put("mail.smtp.port",587);
        propiedades.put("mail.smtp.mail.sender","sistemas@bambusoft.com.ar");
        propiedades.put("mail.smtp.user","sistemas@bambusoft.com.ar");
        propiedades.put("mail.smtp.auth","true");
        //System.out.println(Propiedades.getCORREOSALIENTE()+"/ clave/"+Propiedades.getCLAVECORREO());
        //propiedades.put("mail.transport.protocol", "smtp");
        //propiedades.put("mail.smtp.auth","true");
        sesion=Session.getDefaultInstance(propiedades);
        
    }
    public void enviarMailRepartoCargaCompleta() throws MessagingException{
        init();
        try{
            MimeMessage mensaje=new MimeMessage(sesion);
            mensaje.setFrom(new InternetAddress((String)propiedades.get("mail.smtp.mail.sender")));
            mensaje.addRecipient(Message.RecipientType.TO,new InternetAddress(Propiedades.getCORREOCIERREDECAJA()));
            //mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress("mauro@bambusoft.com.ar"));
            String cc=Propiedades.getCORREOCC();
            String ccc=Propiedades.getCORREOCCC();
            if(cc.equals("")){
                
            }else{
                mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress(Propiedades.getCORREOCC()));
            }
            if(ccc.equals("")){
            }else{
                mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress(Propiedades.getCORREOCCC()));
            }
            
            mensaje.setSubject(asunto);
            BodyPart texto=new MimeBodyPart();
            texto.setText("INFORME GENERADO POR CIERRE DE CAJA   \n Saludos");
            List<BodyPart> bp = new LinkedList<BodyPart>();
            BodyPart adjunto=new MimeBodyPart();
            adjunto.setDataHandler(new DataHandler(new FileDataSource(direccionFile)));
            adjunto.setFileName(detalleListado);
            bp.add(adjunto);
            BodyPart adjunto1=new MimeBodyPart();
            
            adjunto1.setDataHandler(new DataHandler(new FileDataSource(direccionFile1)));
            adjunto1.setFileName(detalleListado1);
            bp.add(adjunto1);
            
            MimeMultipart multiParte=new MimeMultipart();
            multiParte.addBodyPart(texto);
            Iterator it = bp.iterator();//<------------la iteramos 
           while(it.hasNext())//<----------------la recorremos 
           { 
              BodyPart attach =(BodyPart)it.next();//<------------obtenemos el objeto 
            multiParte.addBodyPart(attach);//<-----------------finalmente lo añadimos al mensaje 
            } 
           
            mensaje.setContent(multiParte);
            Transport t=sesion.getTransport("smtp");
            t.connect((String)propiedades.get("mail.smtp.user"), password);
            t.sendMessage(mensaje,mensaje.getAllRecipients());
            t.close();
        }catch(MessagingException me){
            System.err.println("EL MENSAJE NO SE PUDO ENVIAR "+me);
        }
    }
   public void enviarMailRepartoCerrado(String descripcionVehiculo,String fecha) throws MessagingException{
        init();
        try{
            MimeMessage mensaje=new MimeMessage(sesion);
            mensaje.setFrom(new InternetAddress((String)propiedades.get("mail.smtp.mail.sender")));
            mensaje.addRecipient(Message.RecipientType.TO,new InternetAddress("hernangonzalez@sidercon.com"));
            mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress("rgonzalez@sidercon.com"));
            mensaje.setSubject("REPARTO CERRADO");
            mensaje.setText("El reparto del vehiculo "+descripcionVehiculo+" esta cerrado para el reparto del dia "+fecha+". Motivo :CAPACIDAD DE REPARTO COMPLETA");
            Transport t=sesion.getTransport("smtp");
            t.connect((String)propiedades.get("mail.smtp.user"), password);
            t.sendMessage(mensaje,mensaje.getAllRecipients());
            t.close();
        }catch(MessagingException me){
            System.err.println("EL MENSAJE NO SE PUDO ENVIAR "+me);
        }
    }
   public void enviarMailBalance() throws MessagingException{
        init();
        try{
            MimeMessage mensaje=new MimeMessage(sesion);
            mensaje.setFrom(new InternetAddress((String)propiedades.get("mail.smtp.mail.sender")));
            mensaje.addRecipient(Message.RecipientType.TO,new InternetAddress(Propiedades.getCORREOCIERREDECAJA()));
            //mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress("mauro@bambusoft.com.ar"));
            String cc=Propiedades.getCORREOCC();
            String ccc=Propiedades.getCORREOCCC();
            if(cc.equals("")){
                
            }else{
                mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress(Propiedades.getCORREOCC()));
            }
            if(ccc.equals("")){
            }else{
                mensaje.addRecipient(Message.RecipientType.CC,new InternetAddress(Propiedades.getCORREOCCC()));
            }
            
            mensaje.setSubject(asunto);
            BodyPart texto=new MimeBodyPart();
            texto.setText("INFORME GENERADO POR INFORME DE BALANCE   \n Saludos");
            List<BodyPart> bp = new LinkedList<BodyPart>();
            BodyPart adjunto=new MimeBodyPart();
            adjunto.setDataHandler(new DataHandler(new FileDataSource(direccionFile)));
            adjunto.setFileName(detalleListado);
            bp.add(adjunto);
            
            
            MimeMultipart multiParte=new MimeMultipart();
            multiParte.addBodyPart(texto);
            Iterator it = bp.iterator();//<------------la iteramos 
           while(it.hasNext())//<----------------la recorremos 
           { 
              BodyPart attach =(BodyPart)it.next();//<------------obtenemos el objeto 
            multiParte.addBodyPart(attach);//<-----------------finalmente lo añadimos al mensaje 
            } 
           
            mensaje.setContent(multiParte);
            Transport t=sesion.getTransport("smtp");
            t.connect((String)propiedades.get("mail.smtp.user"), password);
            t.sendMessage(mensaje,mensaje.getAllRecipients());
            t.close();
        }catch(MessagingException me){
            System.err.println("EL MENSAJE NO SE PUDO ENVIAR "+me);
        }
    }
}
