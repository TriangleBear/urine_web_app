import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return   Container(
              margin:  const EdgeInsets.symmetric(
                horizontal: 90.0, 
                vertical: 30.0
                ),
              height: screenHeight,
              constraints: BoxConstraints(minHeight: 560.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // avatar img
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(colors: [
                        CustomColor.scaffoldBg.withOpacity(0.6),
                        CustomColor.scaffoldBg.withOpacity(0.6),
                      ]).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                    child: Image.asset(
                    "assets/doc.png",
                    width: screenWidth,
                   
                    ),
                  ),
                 const SizedBox(height: 30),

                  //intro text
                       const Text("Hi!\nAnalyze\nUrine Test Strip", style: TextStyle(
                      fontSize: 20.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),),
                   const SizedBox(height: 15),
                    SizedBox(
                      width: 125.0,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: const Text("Get Started"),),
                    )
                ],
              ),
            );
  }
}