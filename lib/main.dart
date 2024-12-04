import 'package:data_convertion/controler/home_screen_controler.dart';
import 'package:data_convertion/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Studentsscreencontroller(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Studentsscreen(),
      ),
    );
  }
}
