import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movies_challenge/theme/theme_provider.dart';
import 'package:movies_challenge/global_widgets/app_scaffold/app_scaffold.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';
import 'package:movies_challenge/core/utils/device_info_utils.dart';

import 'providers/movies_list_provider.dart';
import 'widgets/movies_list_view.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoviesListProvider()..init(
        language: DeviceInfoUtils.getDeviceLanguage(),
      ),
      child: _MoviesListScreen(),
    );
  }
}

class _MoviesListScreen extends StatelessWidget {
  const _MoviesListScreen();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MoviesListProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return AppScaffold(
      loadingStatus: viewModel.loadingStatus,
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text(context.l10n.darkTheme),
              Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
            ),
            ],
          ),
        ],
      ),
      body: MoviesListView(),
    );
  }
}
