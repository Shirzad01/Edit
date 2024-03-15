import 'package:edit/HomeScreen.dart';
import 'package:edit/Onboboarding/Introdution_Screen.dart';
import 'package:edit/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

   MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyProvider(),
      child: Consumer<MyProvider>(
        builder: (context, MyProvider notifier, child) {
          final controller = Provider.of<MyProvider>(context, listen: false);
          return MaterialApp(
            title: 'Report',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            darkTheme: controller.darkLight? ThemeData.dark() : ThemeData.light(),
            home: const Introduction(),
          );
        },
      ),
    );
  }
}
