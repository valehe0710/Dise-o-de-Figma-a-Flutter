import 'package:flutter/material.dart';
import 'custom_button.dart';  // Asegúrate de que esté importado
import 'login_screen.dart';
import 'register_screen.dart';
import 'location_screen.dart';  // Importa la nueva pantalla

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Welcome to Little Drop",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Botón para obtener ubicación (nuevo)
            BotonPersonalizado(
              texto: 'Obtener Ubicacion',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationScreen(),
                  ),
                );
              },
              colorFondo: const Color.fromARGB(255, 149, 15, 172),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            // login
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              colorFondo: const Color.fromARGB(255, 149, 15, 172),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            // Sign Up
            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              colorFondo: Colors.white,
              colorTexto: const Color.fromARGB(255, 149, 15, 172),
              colorBorde: const Color.fromARGB(255, 149, 15, 172),
              paddingHorizontal: 32,
              paddingVertical: 5,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                BotonRedSocial(
                  letra: 'f',
                  color: Colors.blue,
                ),
                SizedBox(width: 12),
                BotonRedSocial(
                  letra: 'G+',
                  color: Colors.red,
                ),
                SizedBox(width: 12),
                BotonRedSocial(
                  letra: 'in',
                  color: Colors.lightBlue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}