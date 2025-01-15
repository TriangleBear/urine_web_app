import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.0,
                ),
              height: screenHeight/1.2,
              constraints: BoxConstraints(
              minHeight: 350.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Hi!\nAnalyze\nUrine Test Strip", style: TextStyle(
                      fontSize: 40.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),),
                   const SizedBox(height: 15),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: const Text("Get Started"),),
                    )
                  ],
                ),
                Image.asset(
                  "assets/doc.png",
                   height: screenHeight/2,
                   
                  ),
              ],
            ),
            );
        
                    

  }
}