import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(   // evitar overflow
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Inicio de Sesión",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              const CustomInput(
                labelText: 'Nombre',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16),

              const CustomInput(
                labelText: 'Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 30),

              Align(
              alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                   
                  },
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 15, 172),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              BotonPersonalizado(
                texto: 'Iniciar Sesión',
                onPressed: () {
                  Navigator.pop(context);
                },
                colorFondo: const Color.fromARGB(255, 149, 15, 172),
                colorTexto: Colors.white,
                paddingHorizontal: 25,
                paddingVertical: 12,
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
                paddingHorizontal: 40,
                paddingVertical: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
