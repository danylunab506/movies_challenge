import 'package:flutter/material.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(context.l10n.screenNotFound),
        ),
      ),
    );
  }
}
