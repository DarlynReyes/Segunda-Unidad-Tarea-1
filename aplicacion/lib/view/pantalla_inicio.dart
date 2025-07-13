import 'package:aplicacion/widgets/iconos.dart';
import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text ("Inicio",
          style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
      ),
        textAlign: TextAlign.center,
      ),
      automaticallyImplyLeading: false,),

      body: Center(
        child: Padding(padding: EdgeInsets.all(50.0),
        child: Column(

          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(Icons.admin_panel_settings, 
              size: 100,
              color: Colors.blue,),

            Text("Bienvenido",
            style: 
            TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            
          
            SizedBox(height: 100.0,),

            iconosNuevos(texto: "¡Binvenido a la pagina de inicio!", 
                        icono: Icons.mail_outline),

            iconosNuevos(texto: "¡Te has registrado exitosamente!", 
                         icono: Icons.celebration),            

            
            SizedBox(height: 100.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.black
                ),
              onPressed: () {Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route)=> false); },
                child: const Text("Salir", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ), 
                ),
          ],
        ),),
        ),
    );
  }
}