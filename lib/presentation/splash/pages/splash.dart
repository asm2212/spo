import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spo/core/configs/assets/app_vectors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo
        ) 
      )
    );
  }
}