import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/contador_page.dart';
// import 'package:flutter_app/src/pages/home_page.dart';

/* Todos los widgets son clases comunes */
class MyAppPersonal extends StatelessWidget {
  /* Sobreescribimos el metodo que trae el statelessWidget con el personal */
  @override
  /* El metodo build es el encargado de dibujar el widget - Debe retornar un Widget */
  Widget build(context) {
    /* Este widget permite la configuracion global de mi aplicacion */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage()
        child: ContadorPage()
      )
    );
  }
}

/* Anotaciones */
/*
 *  Context -> Contiene la informacion del arbol de widgets  
 *  Center -> Es otro widget que centra a su hijo
 */
