import 'package:flutter/material.dart';
import 'custom_button.dart'; 
import 'package:geolocator/geolocator.dart';  //dependencia para geolocalización

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String _locationMessage = 'Presiona el botón para obtener tu ubicación';  // mostrar el mensaje o coordenadas

  // metodo asincrnico para obtener la ubicación
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;  // variable para verificar si el servicio de ubicación esta habilitado
    LocationPermission permission;  // manejar los permisos

    // Paso1: Verificar si el servicio de ubicación está habilitado
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _locationMessage = 'El servicio de ubicación está desactivado. Por favor, actívalo en la configuración del dispositivo.';
      });
      return;
    }

    // Paso2: verificar y solicitar permisos
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _locationMessage = 'Permiso de ubicacion denegado. Por favor, habilita los permisos en la configuracion.';
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _locationMessage = 'Permiso de ubicacion denegado permanentemente. No podemos solicitar acceso.';
      });
      return;
    }

    // Paso3: obtener la posicion actual si todo está bien
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,  
      );

      // Paso 4: Actualizar el estado con las coordenadas obtenidas
      setState(() {
        _locationMessage = 'Latitud: ${position.latitude}, Longitud: ${position.longitude}';
      });
    } catch (e) {
      setState(() {
        _locationMessage = 'Error al obtener la ubicacion: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obtener Ubicacion'),
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
            BotonPersonalizado(  
              texto: 'Obtener Ubicacion',
              onPressed: _getCurrentLocation,  //el metodo se llama para obtener ubicacion
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