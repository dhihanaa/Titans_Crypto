import 'package:flutter/material.dart';
import 'package:titans/Onboarding%20Screen/onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                    'assets/images/astro2.png',
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
                    Text(
                      'Save and invest at the same time',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Neue',
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding:  EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore..',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontFamily: 'Neue',
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.circle,
                          color: Colors.white54,
                          size: 10,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.circle,
                          color: Colors.white54,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Onboarding3(),
                            ),
                          );
                        },
                        child: Container(
                          height: 54,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding:  EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Center(
                            child:  Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Neue',
                                fontSize: 18,
                              ),
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
