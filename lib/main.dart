import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String backgroundImage = "assets/background.jpg"; // Ruta de la imagen de fondo predeterminada

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PeliculApp'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            backgroundImage,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '¡Bienvenido a PeliculApp!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showImagePickerDialog(context);
                  },
                  child: Text('Agregar Pelicula'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Agregar una Pelicula'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text('Cargar imagen de la pelicula'),
                  onTap: () {
                    // Agregar aquí la lógica para cargar una imagen desde la galería
                    // Actualizar la variable "backgroundImage" con la nueva ruta de la imagen
                    // Para actualizar la imagen de fondo, puedes usar "setState".
                    setState(() {
                      // Ejemplo:
                      // backgroundImage = "nueva_ruta_de_la_imagen.jpg";
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
