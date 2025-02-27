import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/theme_provider.dart';
import 'theme/app_theme.dart';
import 'features/splash_screen/splash_screen.dart';

void main() {
  runApp(
    SplashScreen(
      key: UniqueKey(),
      onInitializationComplete: () {
        runApp(
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(
              themeMode: ThemeMode.light,
            ),
            child: MainApp(),
          ),
        );
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Movies Challenge',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Theme Mode Switch")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Modo Oscuro:"),
            Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
