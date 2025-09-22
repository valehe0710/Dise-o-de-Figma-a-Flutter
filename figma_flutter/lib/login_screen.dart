import 'package:flutter/material.dart';
import 'custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Inicio de Sesion",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            BotonPersonalizado(
              texto: "Volver",
              onPressed: () {
                Navigator.pop(context);
              },
              colorFondo: Colors.white,
              colorTexto: const Color.fromARGB(255, 149, 15, 172),
              colorBorde: const Color.fromARGB(255, 149, 15, 172),
            )
          ],
        ),
      ),
    );
  }
}
