# Integracion con el hardware del dispositivo
 #### Intrucciones: 
 *Instalar dependencias
 
 *Añadir los permisos que requieren solicitar al usario para acceder al GPS el dispositivo
 
 *Comentar el codigo de la implementacion explicando su funcion
 
 *En este Readme.md detallar los pasos que se siguieron para la instalacion de la dependencia o libreria y los permisos que se le solicitan al usario
## Pasos que se siguieron: 
### Paso 1. instalar la dependecia **goelocator**
#### Abri el archivo **pubspec.yaml** dentro de mi trabajo, como se muestra:
![Image](https://github.com/user-attachments/assets/76fce9fb-954a-4bc1-8a02-6ca98337e751)

#### Despues se gurardo el archivo y en la terminal se ejecuto: **flutter pub get*
### Paso 2. Agregar los permisos segun la plataforma
#### Se abre el archivo que se encuentra en **adroid/app/src/main/AndroidManifest.xml** y se agrega los permisos: 
![Image](https://github.com/user-attachments/assets/698ee4ae-a7a3-44cd-bea0-e1d1fda2fa0e)

### Paso 3. Se creo una nueva pantalla **location_screen.dart**
#### Se solicita permisos de ubicacion y optenemos la pocicion actual del usuario (longitud y latitud). 
![Image](https://github.com/user-attachments/assets/b816ddba-4a7b-4900-bc74-239840b16fc6)

####Tambien se muestra el boton que al ser presionado actualiza las cordenadas. 
![Image](https://github.com/user-attachments/assets/c7f97ae6-304f-44cb-84da-6b8d9ec598ff)

#### Tambien se implemento lo de clases pasadas, pequeña base de datos dentro de flutter: 
![Image](https://github.com/user-attachments/assets/7cb5cecf-68c7-434f-9c01-b016fb5a4c39)

![Image](https://github.com/user-attachments/assets/2f544d79-ebf9-4eaa-b731-603b06a68a5a)


