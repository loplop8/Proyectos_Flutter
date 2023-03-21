import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  void resetContador() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTextoLetraBlanca = TextStyle(color: Colors.white54);
    const TextStyle estiloTextoLetraAzulTam50 = TextStyle(
        color: Colors.lightBlue, fontStyle: FontStyle.italic, fontSize: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Counter Screen"),
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
      floatingActionButton: CustomFloatinRow(
          incrementar: incrementar,
          decrementar: decrementar,
          ponerACero: resetContador),
    );
  }
}

class CustomFloatinRow extends StatelessWidget {
  final Function incrementar;
  final Function decrementar;
  final Function ponerACero;
  const CustomFloatinRow({
    super.key,
    required this.incrementar,
    required this.decrementar,
    required this.ponerACero,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_rounded),
            onPressed: () => decrementar()),
        FloatingActionButton(
            child: const Icon(Icons.clean_hands),
            onPressed: () => ponerACero()),
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => incrementar()),
      ],
    );
  }
}
