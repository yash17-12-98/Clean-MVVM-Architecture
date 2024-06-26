import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/resources/assets_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/color_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  Timer? _timer;

  // AppPreferences _appPreferences = instance<AppPreferences>();

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  // _goNext() async {
  //   _appPreferences.isUserLoggedIn().then((isUserLoggedIn) => {
  //         if (isUserLoggedIn)
  //           {
  //             // navigate to main screen
  //             Navigator.pushReplacementNamed(context, Routes.mainRoute)
  //           }
  //         else
  //           {
  //             _appPreferences
  //                 .isOnBoardingScreenViewed()
  //                 .then((isOnBoardingScreenViewed) => {
  //                       if (isOnBoardingScreenViewed)
  //                         {
  //                           Navigator.pushReplacementNamed(
  //                               context, Routes.loginRoute)
  //                         }
  //                       else
  //                         {
  //                           Navigator.pushReplacementNamed(
  //                               context, Routes.onBoardingRoute)
  //                         }
  //                     })
  //           }
  //       });
  // }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: Image(
        image: AssetImage(ImageAssets.splashLogo),
      )),
    );
  }
}
