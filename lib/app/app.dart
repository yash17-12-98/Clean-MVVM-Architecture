import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/resources/routes_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key}); // default constructor

  ///Why MyApp as Singleton class?
  ///because it would be same for Android and iOS class.

  const MyApp._internal(); // private named constructor

  /// Why Private constructor created?
  /// By making the constructor private, you prevent external code from creating instances of the class using the constructor.
  /// ensures that there is only one instance of the class throughout the lifetime of the application and this is called Singleton.

  static const MyApp instance =
      MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance
  /// Why used factory constructor?
  /// Using a factory constructor for creating a singleton class is one of the recommended approaches because it allows you to control the creation process
  /// With a factory constructor, you can implement lazy initialization, which means that the instance is created only when it is first needed.
  /// This can help improve performance and reduce memory usage because the instance is not created until it's actually required
  /// It doesn't necessarily return a new instance every time it's called.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
