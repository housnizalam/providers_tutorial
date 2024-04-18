import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';

class ButtonChangeNotifier extends StatelessWidget {
  const ButtonChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ModelChangeNotifier1>(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => model.addOne(),
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => model.minusOne(),
                child: const Icon(Icons.exposure_minus_1_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
