import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text_app_mini_project/page/home_page.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Speech to Text';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: HomePage(),
      );
}
