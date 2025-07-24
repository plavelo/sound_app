import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sound_app/src/rust/api/simple.dart';
import 'package:sound_app/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const _MyApp());
}

Future<void> _playSound(void _) async {
  await RustLib.init();
  play();
  RustLib.dispose();
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: GestureDetector(
            onTap: () {
              compute(_playSound, null);
            },
            child: Text(
              'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`',
            ),
          ),
        ),
      ),
    );
  }
}
