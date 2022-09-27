import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnboardingProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<OnboardingProvider>();
    final state = provider.state;

    return Container();
  }
}