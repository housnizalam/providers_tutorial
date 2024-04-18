// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:providers_tutorial/Providers/notifier_provider.dart';

// Proxy Provider wird benutzt wenn eine Klasse hat als Attribute ein ChangeNotifier Provider
class ModelProxy {
  ModelChangeNotifier3 provider1;
  ModelProxy({
    required this.provider1,
  });
  printName() {
    provider1.printName();
  }
}
