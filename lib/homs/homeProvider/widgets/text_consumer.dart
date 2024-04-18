import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/provider.dart';

class TextConsumerProvider extends StatelessWidget {
  const TextConsumerProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ModelProvider>(context);
    return Scaffold(
      body: Center(
        child: Text(
          model.count,
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
