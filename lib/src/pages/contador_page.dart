import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  // Lo convierto a una funcion flecha que tiene el return implicito ya que solo es una linea
  @override
  createState () => _ContadorPageState();

}

/* Ponemos un _ para hacerlo privado, diciendole que esa clase no se va a 
utilizar fuera de este archivo */
class _ContadorPageState extends State<ContadorPage> {

  /* Es una buena practica poner el _ ya que solo se van a usar en esta clase
  (privadas) */
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          /* Para darle el alineamiento */
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de Taps', style: _estiloTexto), 
            Text('$_contador', style: _estiloTexto,)
            ],
        ),
      ),
      floatingActionButton: _crearBotones()
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  /* Lo creamos a parte para mantener el codigo mas limpio */
  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton(
          onPressed: _sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          /* No lo ponemos con parentesis por que necesitamos que se 
          ejecute la funcion cuando presionamos el boton */
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
      ],
    );

  }

  /* Separamos los metodos a parte */
  void _agregar(){
    setState(() => _contador++ );
  }

  void _sustraer() {
    setState(() => _contador--);
  }

  void _reset() {
    setState(() => _contador=0);
  }

}

/* ANOTACIONES *
 * El statefullWidget consta de dos clases
 *  1. El stateFulWidget como tal
 *  2. El estado que va a manejar el statefulWidget
 */