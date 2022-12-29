import 'package:flutter/material.dart';
import 'package:test_app_kalchuk235/constants/constants.dart';
import 'package:test_app_kalchuk235/ui/home_screen/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    super.initState();
    _navigateToHome();
    
  }
  
  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2300), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=> HomePage())
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColorPalette,
      body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Container(
                  width: 132,
                  height: 132,
                  decoration: BoxDecoration(
                    color: Constants.orangeColorPalette,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ecommerce', style: TextStyle(fontFamily: 'MarkPro', fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white)),
                    Text('Content', style: TextStyle(fontFamily: 'MarkPro', fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white)),
                  ],
                ),
              ),
            ),

          ],
        ),
    );
  }
}
