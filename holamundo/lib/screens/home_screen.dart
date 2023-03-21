import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTextoLetraBlanca = TextStyle(color: Colors.white54);
    const TextStyle estiloTextoLetraAzulTam50 = TextStyle(
        color: Colors.lightBlue, fontStyle: FontStyle.italic, fontSize: 50);
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Screen"),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          //Definimos la alineacion de las columnas tanto del eje x como del y
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Agregamos una lista de hijos
            const Text("El número de clicks es:",
                style:
                    estiloTextoLetraBlanca), //Agregando Widgets Hijos dentro de una lista
            Text(
              "$contador",
              style: estiloTextoLetraAzulTam50,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            contador++; //Aunque incrementemos el contador no cambiara por ser stateless
            print(
                "Hola Mundo $contador"); //Podemos ver por consola que esta cambiando el contador
          }),
    );
  }
}
