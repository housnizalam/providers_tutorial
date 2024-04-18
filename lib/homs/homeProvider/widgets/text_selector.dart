import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/provider.dart';

class TextSelectorProvider extends StatelessWidget {
  const TextSelectorProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Selector<ModelProvider, Color>(
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
              child: Selector<ModelProvider, Color>(
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
