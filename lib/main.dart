import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'biometric_auth.dart';
import 'set_pin_screen.dart';
import 'enter_pin_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final storage = FlutterSecureStorage();

  Future<Widget> _determineStartScreen() async {
    String? pin = await storage.read(key: 'pin');

    if (pin == null) {
      return BiometricAuthScreen(firstTime: true); // Fingerprint → set PIN
    } else {
      return BiometricAuthScreen(firstTime: false); // Fingerprint → Home or use PIN
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure App',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<Widget>(
        future: _determineStartScreen(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.data!;
          } else {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
        },
      ),
    );
  }
}
