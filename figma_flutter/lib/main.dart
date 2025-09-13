import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              BotonLogin(texto: 'Login', onPressed: null),
              SizedBox(height: 16),
              BotonSignUp(texto: 'Sign Up', onPressed: null),
              SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BotonRedSocial(
                    letra: 'f',
                    color: Colors.blue, // Facebook
                  ),
                  SizedBox(width: 12),
                  BotonRedSocial(
                    letra: 'G+',
                    color: Colors.red, // Google
                  ),
                  SizedBox(width: 12),
                  BotonRedSocial(
                    letra: 'in',
                    color: Colors.lightBlue, // LinkedIn
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// login 
class BotonLogin extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonLogin({super.key, required this.texto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 149, 15, 172),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// sign Up 
class BotonSignUp extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonSignUp({super.key, required this.texto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: const Color.fromARGB(255, 149, 15, 172), width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Color.fromARGB(255, 149, 15, 172),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Botones pequeños para redes sociales (circulares con letra)
class BotonRedSocial extends StatelessWidget {
  final String letra;
  final Color color;

  const BotonRedSocial({super.key, required this.letra, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, // Por ahora sin acción
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(0, 3),
              blurRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            letra,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
