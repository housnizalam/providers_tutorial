import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';

class TextConsumerChangeNotifier extends StatelessWidget {
  const TextConsumerChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    // model ist der selbe Objekt, das in Home Widget deklariert ist
    // Provider of Kontext ist genau wie ein Consumer Widget zu erstellen
    final model = Provider.of<ModelChangeNotifier1>(context);
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
