import 'package:flutter/material.dart';
import 'package:money_saver/main.dart';
import 'package:page_transition/page_transition.dart';

class GantiPassword extends StatefulWidget {
  @override
  _GantiPasswordState createState() => _GantiPasswordState();
}

class _GantiPasswordState extends State<GantiPassword> {
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
                            child: MyHomePage(),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 800),
                          ),
                        );
                      },
                      child: Text(
                        'Done',
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
                    'Ganti Password',
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
                    Text(
                      'Password Baru',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        validator: (e) {
                          if (e.length != 6) {
                            return 'Password minimal 8 digit!';
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
              SizedBox(
                height: 32,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coba Ketik Lagi',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
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
