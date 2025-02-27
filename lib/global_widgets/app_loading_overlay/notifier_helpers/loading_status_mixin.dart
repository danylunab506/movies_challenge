import 'package:flutter/material.dart';
import '../loading_status.dart';

mixin LoadingStatusMixin on ChangeNotifier {
  final loadingStatus = LoadingStatusModel();
}

mixin InitializedLoadingStatusMixin on ChangeNotifier {
  final loadingStatus = LoadingStatusModel(
    isInitialized: true,
  );
}