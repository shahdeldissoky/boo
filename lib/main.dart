import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      scaffoldBackgroundColor:  kPrimaryColor,
    ),
    home: const SplashView(),
   );
  }
}
