import 'package:aplicacion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class PantallaLogin extends StatelessWidget {
  const PantallaLogin ({super.key});

  @override
  Widget build(BuildContext context) {

    final correo_=TextEditingController();
    final contra_=TextEditingController();

    void iniciarSesion () {
      final correo = correo_.text;
      final contra = contra_.text;

      if (correo == 'darlyn.reyes@unah.hn' && contra == '20192000846') {
        Navigator.pushReplacementNamed(context, '/inicio');
         } 

      else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Credenciales incorrectas')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text ("Iniciar Sesion",
          style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
      ),
        textAlign: TextAlign.center,
      ),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(50.0),
        child: Column(
          children: [

           SizedBox(height: 50),
           Icon(Icons.vpn_key, size: 100, color: Colors.blueGrey,),
            SizedBox(height: 100),

            CustomTextfield(texto: "Correo", controller: correo_),
            const SizedBox(height: 18),

            CustomTextfield(texto: "Contraseña", isPassword: true, controller: contra_),
            const SizedBox(height: 80),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: Colors.black),
              onPressed: iniciarSesion, 
              child: const Text("Ingresar", style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              
              TextButton(
                onPressed: ()=> Navigator.pushNamed(context, '/registro'), 
                child: const Text("¿No tienes una cuenta? Registrate"))
          ],
          

        ),),
      ),
    );
  }
}