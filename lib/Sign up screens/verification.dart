import 'package:flutter/material.dart';
import 'package:titans/Sign%20up%20screens/signupmobile.dart';
import 'package:titans/Sign%20up%20screens/successful.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpMobile(),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Verification',
                          style: TextStyle(
                            fontFamily: 'Neue',
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Enter your code',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Please type the code we sent to',
                style: TextStyle(
                  fontFamily: 'Neue',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                '+1 234 567 8900',
                style: TextStyle(
                  fontFamily: 'Neue',
                  fontSize: 14,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                height: 54,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      List<String> cardTexts = [
                        '1',
                        '2',
                        '3',
                        '4',
                      ];

                      double cardWidth = index == 1 ? 60 : 60;

                      return Container(
                        width: cardWidth,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey.shade900)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              cardTexts[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Neue',
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Resend code (30)',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Neue',
                      ),
                    ),
                    Text(
                      'Resend Link',
                      style: TextStyle(
                        fontFamily: 'Neue',
                        fontSize: 14,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessfulVerification(),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Center(
                    child: Text(
                      'Continue',
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
    );
  }
}
