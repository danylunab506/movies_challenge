import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../app_loading_overlay/app_loading_overlay.dart';
import '../app_loading_overlay/loading_status.dart';


class AppScaffold extends StatelessWidget {

  final Widget body;
  final PreferredSizeWidget? appBar;
  final ValueListenable<LoadingStatus> loadingStatus;

  const AppScaffold({
    super.key,
    required this.body,
    required this.loadingStatus,
    this.appBar
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LoadingOverlay(
        loadingStatus: loadingStatus,
        child: Scaffold(
          appBar: appBar,
          body: body,
        ),
      ),
    );
  }
}