import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/movies_list_provider.dart';
import 'widgets/movies_list_view.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // TODO: change language for device language
      create: (context) => MoviesListProvider()..init(language: 'en-US'),
      child: _MoviesListScreen(),
    );
  }
}

class _MoviesListScreen extends StatelessWidget {
  const _MoviesListScreen();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MoviesListProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: MoviesListView(),
        bottomSheet: ValueListenableBuilder(
          valueListenable: viewModel.loadingNotifier,
          builder: (_, value, __) => value ? CircularProgressIndicator() : SizedBox.shrink(),
        ),
      ),
    );
  }
}
