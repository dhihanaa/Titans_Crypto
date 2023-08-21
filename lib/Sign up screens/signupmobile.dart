import 'package:flutter/material.dart';
import 'package:titans/Sign%20up%20screens/signup.dart';
import 'package:titans/Sign%20up%20screens/verification.dart';

class SignUpMobile extends StatelessWidget {
  const SignUpMobile({super.key});

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
                      builder: (context) => SignUp(),
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
                          'Sign Up',
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
                'Register with mobile',
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
                'Please type your number, then we’ll send a verification \ncode for authentication.',
                style: TextStyle(
                  fontFamily: 'Neue',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mobile Number",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Neue',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your mobile",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      filled: true,
                      fillColor: Colors.black38,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPVerification(),
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
                          'Send OTP',
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
          ],
        ),
      ),
    );
  }
}
