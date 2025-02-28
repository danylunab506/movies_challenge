import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'package:movies_challenge/core/network/api_client.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashScreen({super.key, required this.onInitializationComplete});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 1,
      ),
    ).then(
      (_) {
        _setupServices().then(
          (_) => widget.onInitializationComplete(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies Challenge',
      home: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Future<void> _setupServices() async {
    WidgetsFlutterBinding.ensureInitialized();

   GetIt.instance.registerSingleton<Dio>(ApiClient.getClient());
  }
}