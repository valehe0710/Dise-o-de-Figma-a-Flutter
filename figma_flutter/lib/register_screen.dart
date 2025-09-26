import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(   // que no se tape con barra
        child: SingleChildScrollView(   // scroll si no cabe todo
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Registro",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              const CustomInput(
                labelText: 'Nombre',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16),

              const CustomInput(
                labelText: 'Email',
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              const CustomInput(
                labelText: 'Teléfono',
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),

              const CustomInput(
                labelText: 'Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 30),

              const CustomInput(
                labelText: 'Confirmar Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 30),

              BotonPersonalizado(
                texto: 'Registrarse',
                onPressed: () {
                  Navigator.pop(context);
                },
                colorFondo: const Color.fromARGB(255, 149, 15, 172),
                colorTexto: Colors.white,
                paddingHorizontal: 28,
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
