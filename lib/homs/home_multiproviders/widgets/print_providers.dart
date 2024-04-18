import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';
import 'package:providers_tutorial/Providers/proxy_pronider.dart';

class PrintProviders extends StatelessWidget {
  const PrintProviders({super.key});

  @override
  Widget build(BuildContext context) {
    final model1 = Provider.of<ModelChangeNotifier1>(context);
    final model2 = Provider.of<ModelChangeNotifier2>(context);
    final modelProxy = Provider.of<ModelProxy>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              print(1);
              model1.printName();
            },
            child: Text('P1'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              print(2);
              model2.printName();
            },
            child: Text('P2'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              print(3);
              modelProxy.printName();
            },
            child: Text('P3'),
          ),
        ),
      ],
    );
  }
}
