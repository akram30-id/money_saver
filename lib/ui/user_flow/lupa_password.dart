import 'package:flutter/material.dart';
import 'package:money_saver/ui/user_flow/ganti_password.dart';
import 'package:page_transition/page_transition.dart';

import '../../main.dart';

class LupaPassword extends StatefulWidget {
  @override
  _LupaPasswordState createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: GantiPassword(),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 800),
                          ),
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inget PIN Waktu itu?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Lato'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        validator: (e) {
                          if (e.length != 6) {
                            return 'PIN harus 6 digit!';
                          }
                          return null;
                        },
                        obscureText: true,
                        cursorColor: Colors.orange,
                        keyboardType: TextInputType.number,
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
            ],
          ),
        ),
      ),
    );
  }
}
