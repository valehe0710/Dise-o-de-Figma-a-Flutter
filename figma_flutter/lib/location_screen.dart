import 'package:flutter/material.dart';
import 'custom_button.dart'; 
import 'package:geolocator/geolocator.dart';  // Importa la dependencia para geolocalización

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String _locationMessage = 'Presiona el botón para obtener tu ubicación';  // Variable para mostrar el mensaje o coordenadas

  // Método asincrónico para obtener la ubicación
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;  // Variable para verificar si el servicio de ubicación está habilitado
    LocationPermission permission;  // Variable para manejar los permisos

    // Paso 1: Verificar si el servicio de ubicación está habilitado
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _locationMessage = 'El servicio de ubicación está desactivado. Por favor, actívalo en la configuración del dispositivo.';
      });
      return;
    }

    // Paso 2: Verificar y solicitar permisos
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _locationMessage = 'Permiso de ubicación denegado. Por favor, habilita los permisos en la configuración.';
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _locationMessage = 'Permiso de ubicación denegado permanentemente. No podemos solicitar acceso.';
      });
      return;
    }

    // Paso 3: Obtener la posición actual si todo está bien
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,  // Precisión alta para GPS
      );

      // Paso 4: Actualizar el estado con las coordenadas obtenidas
      setState(() {
        _locationMessage = 'Latitud: ${position.latitude}, Longitud: ${position.longitude}';
      });
    } catch (e) {
      setState(() {
        _locationMessage = 'Error al obtener la ubicación: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obtener Ubicación'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _locationMessage,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            BotonPersonalizado(  // Usamos tu botón personalizado
              texto: 'Obtener Ubicación',
              onPressed: _getCurrentLocation,  // Llama al método para obtener la ubicación
              colorFondo: Colors.blue,
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 12,
            ),
          ],
        ),
      ),
    );
  }
}