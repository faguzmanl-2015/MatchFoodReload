package matchfood

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ContactController {

    def mailService

    def index() { }

    def enviarCorreo () {
        String nombre = params.nameContact
        String correo = params.emailContact
        String telefono = params.phoneContact
        String comentarios = params.commentContact

        String asunto = "Contáctenos - " + nombre
        String mensaje = "<b>Nombre del cliente:</b> " + nombre + "<br><br><b>Correo Electrónico:</b> " + correo + "<br><br><b>Teléfono:</b> " + telefono + "<br><br><b>Mensaje</b><br>" + comentarios + "<br><br><b>Mensaje Enviado desde Match Food Web Page</b><br>"

        mailService.sendMail {
            to "matchfoodreload@gmail.com"
            from "matchfoodreload@gmail.com"
            subject asunto
            html mensaje
        }

        mailService.sendMail {
            to correo
            from "matchfoodreload@gmail.com"
            subject "Hemos recibido tu solicitud"
            html "Hola " + nombre + ", hemos recibido tus comentarios correctamente. Seguimos trabajando para prestarte un mejor servicio. <br><br>Te deseamos un feliz día.<br><br>Mensaje Enviado desde Match Food Web Page."
        }

        redirect(uri:'/')
    }
}
