import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'loading_status.dart';

class LoadingOverlay extends StatelessWidget {
  final ValueListenable<LoadingStatus> loadingStatus;
  final Widget child;
  final Widget? placeholder;
  final bool expandOverlay;
  final bool showBackground;
  final bool alwaysBuildChild;

  const LoadingOverlay({
    super.key,
    required this.loadingStatus,
    required this.child,
    this.placeholder,
    this.expandOverlay = true,
    this.showBackground = true,
    this.alwaysBuildChild = false,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<LoadingStatus>(
      valueListenable: loadingStatus,
      builder: (_, loadingStatus, child) {
        return _Overlay(
          loadingStatus: loadingStatus,
          expandOverlay: expandOverlay,
          showBackground: showBackground,
          placeholder: placeholder,
          alwaysBuildChild: alwaysBuildChild,
          child: child!,
        );
      },
      child: child,
    );
  }
}

class _Overlay extends StatelessWidget {
  final Widget child;
  final Widget? placeholder;
  final LoadingStatus loadingStatus;
  final bool expandOverlay;
  final bool showBackground;
  final bool alwaysBuildChild;

  const _Overlay({
    required this.child,
    required this.loadingStatus,
    required this.expandOverlay,
    required this.showBackground,
    required this.alwaysBuildChild,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    final bool isChildClickable;
    final double overLayOpacity;
    final Widget? indicator;

    switch (loadingStatus) {
      case LoadingStatus.initialLoading:
        isChildClickable = false;
        overLayOpacity = 1;
        indicator = placeholder ??
            _RefreshingIndicator();
        break;
      case LoadingStatus.refreshing:
        isChildClickable = false;
        overLayOpacity = 0.75;
        indicator = _RefreshingIndicator();
        break;
      default:
        isChildClickable = true;
        overLayOpacity = 0;
        indicator = null;
    }

    final loadingOverlay = IgnorePointer(
      ignoring: isChildClickable,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 150),
        opacity: overLayOpacity,
        child: Container(
          color: Colors.black.withValues(
            alpha: 0.5
          ),
          margin:  EdgeInsets.only(
            top: 40,
          ),
          child: indicator,
        ),
      ),
    );
    return Stack(
      children: [
        if (alwaysBuildChild || loadingStatus != LoadingStatus.initialLoading)
          IgnorePointer(ignoring: !isChildClickable, child: child),
        expandOverlay ? Positioned.fill(child: loadingOverlay) : loadingOverlay,
      ],
    );
  }
}

class _RefreshingIndicator extends StatelessWidget {
  const _RefreshingIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircularProgressIndicator(),
          Text(
            'Cargando',
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}