import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  /* Creamos una instancia de la clase TextStyle
    Es de tipo final por que estamos trabajando con un stateless widget
    lo cual requiere que no cambie */

  final estiloTexto = new TextStyle(fontSize: 25);
  final contador = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Center(
        child: Column(
          /* Para darle el alineamiento */
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de Clicks', style: estiloTexto), 
            Text('$contador', style: estiloTexto,)
            ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0,),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        }, //Funcion anonima
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

/*
 *  Scaffold -> Implementa el material design y las 
 *  propiedades de appbar y asi. Ctrl + Space
 * 
 */
