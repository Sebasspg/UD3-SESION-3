import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion03/provider/cambio_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<CambioProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: (cambio.dato1 == false)
            ? const Text('MODO CLARO :3', style: TextStyle(fontSize: 20),)
            : const Text('MODO OSCURO >:3', style: TextStyle(fontSize: 20),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                cambio.btncambiar();
              },
              icon: const Icon(Icons.brightness_medium_rounded))
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 214, 214, 214),
          ),
          Center(
            child: Container(
              color: Colors.white,
              width: 400,
              height: 500,
            ),
          ),
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 211, 167, 255),
            ),
          ),
          Visibility(
            visible: cambio.dato1,
            child: Container(
              color: Colors.black,
            ),
          ),
          Visibility(
            visible: cambio.dato1,
            child: Center(
              child: Container(
                color: const Color.fromARGB(255, 79, 79, 79),
                width: 400,
                height: 500,
              ),
            ),
          ),
          Visibility(
            visible: cambio.dato1,
            child: const Center(
                child: CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 196, 137, 255),
            )),
          )
        ],
      ),
    );
  }
}
