import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:nike_store/presentation/pages/my_home/my_home.dart';
import 'package:nike_store/presentation/pages/on_board/on_board.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: OnBoard(),
      //home: SplashScreen(),
    );
  }
}