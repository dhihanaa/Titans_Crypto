import 'package:flutter/material.dart';
import 'package:titans/Sign%20in%20screens/siginemial.dart';
import 'package:titans/Sign%20in%20screens/signinmobile.dart';
import 'package:titans/Sign%20up%20screens/signupmobile.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                        builder: (context) => SignInEmail(),
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
                padding: EdgeInsets.only(top: 15, left: 20, right: 20),
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
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Sign up',
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
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 20),
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
                                builder: (context) => SignUpMobile(),
                              ),
                            );
                          },
                          child: Text(
                            "Register with mobile",
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
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Please enter email",
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
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
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
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Please enter password",
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
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpMobile(),
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
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Center(
                          child: Text(
                            'Sign up',
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
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                                  padding: EdgeInsets.all(15.0),
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
                                  padding: EdgeInsets.all(15.0),
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
