import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/stream_provider.dart';
import 'package:providers_tutorial/homs/home_stream_builder/widgets/stream_timer.dart';

class MyHomeStreamProvider extends StatefulWidget {
  const MyHomeStreamProvider({super.key});

  @override
  State<MyHomeStreamProvider> createState() => _MyHomeStreamProviderState();
}

class _MyHomeStreamProviderState extends State<MyHomeStreamProvider> {
  bool start = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Provider'),
      ),
      body: StreamProvider<StreamTimer>(
        create: (context) => getStreamTimer(),
        initialData: StreamTimer(timerNumber: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamTimerWidget(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print(start);
                  start = true;
                  print(start);
                });
              },
              child: Text('fg'),
            ),
          ],
        ),
      ),
    );
  }
}
