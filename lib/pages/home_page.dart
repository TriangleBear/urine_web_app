// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/nav_items.dart';
import 'package:frontend/constants/size.dart';
import 'package:frontend/styles/style.dart';
import 'package:frontend/widgets/drawer_mobile.dart';
import 'package:frontend/widgets/header_desktop.dart';
import 'package:frontend/widgets/header_mobile.dart';
import 'package:frontend/widgets/main_desktop.dart';
import 'package:frontend/widgets/main_mobile.dart';
import 'package:frontend/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth 
          ? null
          :const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if(constraints.maxWidth >= kMinDesktopWidth)
            const HeaderDesktop() else
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),

            if(constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop() 
            else 
              const MainMobile(),

          
                      //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                
              ),
            ],
            ),
        );
      }
    );
  }
}