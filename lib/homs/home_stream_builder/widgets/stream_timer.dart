import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_tutorial/Providers/stream_provider.dart';

class StreamTimerWidget extends StatelessWidget {
  const StreamTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final stream = Provider.of<StreamTimer>(context);
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.blue.shade300,
        radius: 50,
        child: Center(
          child: Text(
            stream.timerNumber.toString(),
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
