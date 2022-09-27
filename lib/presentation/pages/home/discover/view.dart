import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DiscoverProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<DiscoverProvider>();
    final state = provider.state;

    return Container();
  }
}