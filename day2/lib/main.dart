import 'package:day2/features/home/presentation/pages/home_page.dart';
import 'package:day2/features/home/presentation/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Initializing dependencies...');
  await di.init();
  print('Dependencies initialized.');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: TestPage(),
    );
  }
}
