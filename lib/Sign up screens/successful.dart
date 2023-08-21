import 'package:flutter/material.dart';
import 'package:titans/Onboarding%20Screen/splashscreen.dart';

class SuccessfulVerification extends StatelessWidget {
  const SuccessfulVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: 2,
              right: 2,
              child: Center(
                child: Container(
                  child: Image.asset(
                    'assets/images/astro4.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 415,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Your account has been successfully created!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Neue',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 54,
                          width: 366,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Neue'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
