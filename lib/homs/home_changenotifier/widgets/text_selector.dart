import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';

class TextSelectorChangeNotifier extends StatelessWidget {
  const TextSelectorChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
    // Selektor kann die Effezient der App viel verbessen weil er hört nur die gegebene 
    // Attribut somit bildet die Seite nur wenn diese Attribut sich ändert. 
    // Entgegen bildet die Consumer die ganze Seite wieder und wieder mit je Änderung deren Klasse.
              child: Selector<ModelChangeNotifier1, Color>(
                selector: (context, model) => model.plusColor,
                builder: (context, plusColor, child) {
                  print('plus');
                  return CircleAvatar(
                    backgroundColor: plusColor,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Selector<ModelChangeNotifier1, Color>(
                selector: (context, model) => model.minusColor,
                builder: (context, minusColor, child) {
                  print('minus');
                  return CircleAvatar(
                    backgroundColor: minusColor,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
