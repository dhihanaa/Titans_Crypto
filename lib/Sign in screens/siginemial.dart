import 'package:flutter/material.dart';
import 'package:titans/Onboarding%20Screen/onboarding3.dart';
import 'package:titans/Sign%20in%20screens/signinmobile.dart';
import 'package:titans/Sign%20up%20screens/signup.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                        builder: (context) => Onboarding3(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelColor: Colors.white, 
                    tabs: [
                      Tab(text: 'Sign In'),
                      Tab(text: 'Sign Up'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 15, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontFamily: 'Neue',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInMobile(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign in with mobile",
                            style: TextStyle(
                              fontFamily: 'Neue',
                              fontSize: 14,
                              color: Colors.greenAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 15, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelStyle: TextStyle(color: Colors.grey[700]),
                        filled: true,
                        fillColor: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password",
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
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 15, right: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Enter your password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: TextStyle(color: Colors.grey[700]),
                            filled: true,
                            fillColor: Color.fromRGBO(0, 0, 0, 0.38),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontFamily: 'Neue',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
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
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Neue'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Or login with ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Neue',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/fb.png'),
                                      SizedBox(width: 10),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                          fontFamily: 'Neue',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/gg.png'),
                                      SizedBox(width: 10),
                                      Text(
                                        'Google',
                                        style: TextStyle(
                                          fontFamily: 'Neue',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Column(
                          children: [
                            Image.asset('assets/images/fingerprint.png'),
                            SizedBox(height: 15),
                            Text(
                              'Use fingerprint instead?',
                              style: TextStyle(
                                  fontFamily: 'Neue',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
