import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OtpProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<OtpProvider>();
    final state = provider.state;

    return Container();
  }
}