import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/core/utils/app_router.dart';
import 'package:news_app/features/home/view/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Poppins", scaffoldBackgroundColor: Colors.white),
    );
  }
}
