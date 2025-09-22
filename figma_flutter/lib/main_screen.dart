import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'new_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
  
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewScreen(),
                  ),
                );
              },
              colorFondo: const Color.fromARGB(255, 149, 15, 172),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: null, // después le agregas funcionalidad
              colorFondo: Colors.white,
              colorTexto: const Color.fromARGB(255, 149, 15, 172),
              colorBorde: const Color.fromARGB(255, 149, 15, 172),
              paddingHorizontal: 32,
              paddingVertical: 5,
            ),
            const SizedBox(height: 16),

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
