import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/notifier_provider.dart';
import 'package:providers_tutorial/Providers/proxy_pronider.dart';

import 'package:providers_tutorial/homs/home_multiproviders/widgets/print_providers.dart';

class MyHomePageMultiProviders extends StatelessWidget {
  MyHomePageMultiProviders({super.key});

  @override
  Widget build(BuildContext context) {
  // Multi provider ermöglicht mehrere Providers zu benutzen
  // Die Providers soll in Providers List deklariert werden
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ModelChangeNotifier1(),
        ),
        ChangeNotifierProvider(
          create: (context) => ModelChangeNotifier2(),
        ),
        ChangeNotifierProvider(
          create: (context) => ModelChangeNotifier3(),
        ),
        // Proxy Provider funktioniert genau wie ChangeNotifier 
        // es muss aber update statt creat schreiben und drin wird die Proxy und ChangeNotifier deklariert
        ProxyProvider<ModelChangeNotifier3, ModelProxy>(
          update: (context, modelChangeNotifier3, modelProxy) => ModelProxy(
            provider1: modelChangeNotifier3,
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Chamge Notifier')),
        ),
        body: const Column(
          children: [
            Expanded(
              child: PrintProviders(),
            ),
          ],
        ),
      ),
    );
  }
}
