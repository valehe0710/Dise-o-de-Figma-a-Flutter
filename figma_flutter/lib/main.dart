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
            children: [
              BotonPersonalizado(
                texto: 'Login',
                onPressed: null,
                colorFondo: const Color.fromARGB(255, 149, 15, 172),
                colorTexto: Colors.white,
                paddingHorizontal: 40,
                paddingVertical: 7,
              ),
              const SizedBox(height: 16),
              BotonPersonalizado(
                texto: 'Sign Up',
                onPressed: null,
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
      ),
    );
  }
}

// unificados botons
class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final Color colorFondo;
  final Color colorTexto;
  final Color? colorBorde;
  final double paddingHorizontal;
  final double paddingVertical;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    this.onPressed,
    required this.colorFondo,
    required this.colorTexto,
    this.colorBorde,
    this.paddingHorizontal = 32,
    this.paddingVertical = 7,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(25),
          border: colorBorde != null ? Border.all(color: colorBorde!, width: 2) : null,
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
          style: TextStyle(
            color: colorTexto,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//boton sociales
class BotonRedSocial extends StatelessWidget {
  final String letra;
  final Color color;

  const BotonRedSocial({
    super.key,
    required this.letra,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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