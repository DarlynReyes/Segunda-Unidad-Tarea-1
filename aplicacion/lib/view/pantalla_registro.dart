import 'package:aplicacion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro ({super.key});


  @override
  Widget build(BuildContext context) {

    final nombre= TextEditingController();
    final correo= TextEditingController();
    final telefono= TextEditingController();
    final contra= TextEditingController();

    void validadInformacion (){
      final nombre_= nombre.text;
      final correo_= correo.text;
      final telefono_= telefono.text;
      final contra_= contra.text;

      if (nombre_.isEmpty || correo_.isEmpty || telefono_.isEmpty || contra_.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Todos los campos son obligatorios')),
        );
        return;
      }

      if (!correo_.endsWith('@unah.hn')) {
        _mostrarError(context, 'El correo debe ser institucional (@unah.hn)');
        return;
      }

      if (contra_.length < 6 || !contra_.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
        _mostrarError(context, 'La contraseña debe tener al menos 6 caracteres y un carácter especial.');
        return;
      }

      Navigator.pushReplacementNamed(context, '/registro');
    }

    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text ("Registrarse",
          style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
      ),
        textAlign: TextAlign.center,
      ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
                Container(
                  color: Colors.blue,
                ),
  
              SizedBox(height: 50),
              Icon(Icons.app_registration, size: 100, color: Colors.blueGrey,),
             SizedBox(height: 80),


              CustomTextfield(texto: "Nombre", controller: nombre),
              const  SizedBox(height: 15),
              CustomTextfield(texto: "Correo", controller: correo),
              const SizedBox(height: 15),  
              CustomTextfield(texto: "Telefono", controller: telefono),
              const  SizedBox(height: 15),
              CustomTextfield(texto: "Contraseña", isPassword: true, controller: contra),
              const SizedBox(height: 20),

              ElevatedButton
              (style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: Colors.black),
                  
                onPressed: validadInformacion, 
                child: const Text("Registrarse", 
                    style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                   fontWeight: FontWeight.bold
                ),
                ), 
                ),  

                 TextButton(
                onPressed: ()=> Navigator.pushNamed(context, '/login'), 
                child: const Text("¿Ya tienes cuenta? Inicia Sesion"))
            ],
            
          ),
        ),

      )
    );
  }
  
  void _mostrarError(BuildContext context, String mensaje) {
        showDialog(context: context, 
        builder: (_) => AlertDialog(
            title: const Text("Error"),
            content: Text(mensaje),
            actions: [
              TextButton(onPressed: ()=> Navigator.pop(context), 
              child: const Text("Cerrar"))
            ],
        ), 
        );

    }
}