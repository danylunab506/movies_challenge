# Movies Chanllenge App

## Descripción
Movies Chanllenge App es una aplicación desarrollada en Flutter que permite consultar una lista de películas utilizando la API de [The Movie Database (TMDB)](https://www.themoviedb.org/movie). La aplicación implementa la arquitectura **Clean Architecture**, asegurando una separación clara entre capas y facilitando la escalabilidad y mantenibilidad del código.

## Características
- Consulta de películas desde la API de TMDB.
- Implementación de **Clean Architecture** para una mejor organización del código.
- Manejo de estado con **Provider**.
- Navegación con **GoRouter**.
- Serialización de datos con **Freezed** y **JsonSerializable**.
- Inyección de dependencias con **GetIt**.
- Animaciones atractivas con **Lottie**.

## Tecnologías y Paquetes Utilizados

A continuación, se enumeran los paquetes externos utilizados en el proyecto, junto con una breve descripción de su función:

| Paquete | Versión | Descripción |
|---------|---------|-------------|
| `cupertino_icons` | ^1.0.8 | Proporciona iconos con estilo iOS para Flutter. |
| `dio` | 5.7.0 | Cliente HTTP avanzado para realizar peticiones a la API de TMDB. |
| `freezed` | 2.5.2 | Generador de código para clases inmutables y patron de datos. |
| `freezed_annotation` | 2.4.4 | Anotaciones necesarias para trabajar con Freezed. |
| `go_router` | 14.6.3 | Manejo de rutas declarativas para Flutter. |
| `intl` | 0.19.0 | Soporte para internacionalización y formateo de fechas, números y textos. |
| `provider` | 6.1.2 | Manejo de estado basado en InheritedWidget. |
| `retrofit` | 4.4.1 | Cliente HTTP basado en anotaciones para simplificar el consumo de APIs. |
| `get_it` | 8.0.3 | Contenedor de inyección de dependencias para una gestión eficiente de instancias. |
| `lottie` | ^3.3.1 | Soporte para animaciones JSON de Lottie. |
| `json_serializable` | 6.8.0 | Generador de código para convertir JSON a clases de Dart. |
| `retrofit_generator` | 9.1.3 | Generador de código para Retrofit en Dart. |

## Instalación y Ejecución
1. Clonar el repositorio:
   ```sh
   git clone https://github.com/danylunab506/movies_challenge.git
   cd movies_challenge
   ```
2. Instalar las dependencias:
   ```sh
   flutter pub get

   flutter pub run build_runner build --delete-conflicting-outputs
   ```
3. Ejecutar la aplicación:
   ```sh
   flutter run
   ```

## Arquitectura
El proyecto está basado en **Clean Architecture**, lo que significa que el código está dividido en varias capas:
- **View Layer**: Contiene los widgets y la lógica de UI.
- **Domain Layer**: Define los casos de uso y modelos de dominio.
- **Data Layer**: Maneja la comunicación con la API y la persistencia de datos.

Esta estructura permite una mejor organización y escalabilidad del código.

## Descarga de APK
- Puedes descargar el APK para pruebas [Aquí](https://webapp.diawi.com/install/JKqweG).

