import 'package:flutter/material.dart';
import 'package:money_saver/ui/user_flow/complete_profile.dart';
import 'package:money_saver/ui/user_flow/login.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text(
                      'Register Akun',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontFamily: 'Lato'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: Text(
                      'Isi form pendaftaran dengan lengkap ya!',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Username'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            cursorColor: Colors.orange,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.orange,
                              prefixIcon: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.orange,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            cursorColor: Colors.orange,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.orange,
                              prefixIcon: Icon(
                                Icons.lock_rounded,
                                color: Colors.orange,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Konfirmasi Password'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            cursorColor: Colors.orange,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.orange,
                              prefixIcon: Icon(
                                Icons.lock_rounded,
                                color: Colors.orange,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.orange[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: CompleteProfile(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 800),
                        ),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sudah punya akun',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    height: 64,
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
