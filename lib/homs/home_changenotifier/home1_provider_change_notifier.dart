import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';
import 'package:providers_tutorial/homs/home_changenotifier/widgets/button_provider.dart';
import 'package:providers_tutorial/homs/home_changenotifier/widgets/text_consumer.dart';
import 'package:providers_tutorial/homs/home_changenotifier/widgets/text_selector.dart';

class MyHomePageChangeNotifier extends StatelessWidget {
  MyHomePageChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider : bildet ein Model Objekt, das nur in Tochter Widgets _
    // benutzt werden kann.
    return ChangeNotifierProvider(
      create: (context) => ModelChangeNotifier1(),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Chamge Notifier')),
        ),
        body: const Column(
          children: [
            Expanded(
              flex: 5,
              child: TextConsumerChangeNotifier(),
            ),
            Expanded(
              child: TextSelectorChangeNotifier(),
            ),
            Expanded(
              child: ButtonChangeNotifier(),
            ),
          ],
        ),
      ),
    );
  }
}
