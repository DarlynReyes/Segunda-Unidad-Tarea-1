import 'package:aplicacion/view/pantalla_login.dart';
import 'package:aplicacion/view/pantalla_registro.dart';
import 'package:aplicacion/widgets/iconos.dart';
import 'package:flutter/material.dart';

class PantallaHome extends StatelessWidget {
  const PantallaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 65,),  
              SizedBox(height: 10),
              Text("Bienvenido",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),

              SizedBox(height: 30),
              iconosNuevos(texto:  "Apunta alto, programa con pasión.",
               icono: Icons.rocket_launch),

               iconosNuevos(texto: "El aprendizaje constante es la clave del éxito.",
                icono: Icons.star_outline),

              
              SizedBox(height: 50),
              Text("¿Ya tiene una cuenta?",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15,
              ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                  backgroundColor: Colors.black
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> PantallaLogin()),
                    );
                  },
                child: Text("Iniciar Sesión",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                ),

              SizedBox(height: 40),
              Text("¿No tiene cuenta?",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15,
              ),
              ),


              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 41, vertical: 12),
                  backgroundColor: Colors.black
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> PantallaRegistro()),
                    );
                },
                child: Text("Registrarse",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ],
          ), ),
      )

    );
  }
}