import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // el buildcontext es todo el arbol de widgets

    const fontSize20 = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla del Counter'),
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        // Clase que centra el contenido
        child: Column(
          // Column permite poner varios hijos en un widget
          mainAxisAlignment:
              MainAxisAlignment.center, // Alinea al centro en eje vertical
          children: [
            Text('Número de Pulsaciones: ', style: fontSize20),
            Text('$counter', style: fontSize20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(), //Hacemos que el boton sea circular
        elevation: 10, // se le añaden sombras
        backgroundColor: Colors.blueAccent, // se ñe cambia el color de fondo
        onPressed: () {
          // lo que pasa cuando se presiona el boton
          counter++;
          setState(() {
            // el setState es para que se actualice el estado de la aplicacion
          });
        },
        child: Icon(Icons.add), // Añade un icono al botón
      ),
    );
  }
}
