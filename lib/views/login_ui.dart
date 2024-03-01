// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 20),
              child: Align(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: MediaQuery.of(context).size.height * 0.35,
                        )),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Enter Your Mobile Number',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 120, 120)),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Enter Number',
                        hintStyle: TextStyle(fontFamily: 'Kanit'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Change Number ?',
                          style: TextStyle(
                              color: Colors.blue, fontFamily: 'Kanit'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Kanit'),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 120, 120),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 1,
                            MediaQuery.of(context).size.height * 0.06,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                  color: const Color.fromARGB(
                                      255, 255, 100, 100)))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Or Login with',
                      style: TextStyle(fontFamily: 'Kanit'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/googlelogo.png',
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Text(
                            '   Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Kanit',
                                fontSize: 20),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 1,
                          MediaQuery.of(context).size.height * 0.06,
                        ),
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10.0),
                        //     side: BorderSide(
                        //         color: const Color.fromARGB(
                        //             255, 255, 255, 255)))),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You Dont't have an account?  ",
                          style: TextStyle(fontFamily: 'Kanit'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 62, left: 80, right: 10),
              child: Icon(Icons.person_outline)),
        ],
      ),
    );
  }
}
