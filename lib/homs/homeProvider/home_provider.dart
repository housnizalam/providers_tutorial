import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/provider.dart';
import 'package:providers_tutorial/homs/homeProvider/widgets/button_provider.dart';
import 'package:providers_tutorial/homs/homeProvider/widgets/text_consumer.dart';
import 'package:providers_tutorial/homs/homeProvider/widgets/text_selector.dart';

class MyHomePageProvider extends StatelessWidget {
  MyHomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
// Diese Provider kann nur die Werte in ModelProvider Objekt ändern es kann aber
// die Seite nicht aktualisieren
    return Provider<ModelProvider>(
      create: (context) => ModelProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Provider')),
        ),
        body: const Column(
          children: [
            Expanded(
              flex: 5,
              child: TextConsumerProvider(),
            ),
            Expanded(
              child: TextSelectorProvider(),
            ),
            Expanded(
              child: ButtonProvider(),
            ),
          ],
        ),
      ),
    );
  }
}
