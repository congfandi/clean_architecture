import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FeedProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<FeedProvider>();
    final state = provider.state;

    return Container();
  }
}