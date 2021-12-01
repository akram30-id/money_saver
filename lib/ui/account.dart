import 'package:flutter/material.dart';
import 'package:money_saver/ui/user_flow/ganti_password.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Container(
        margin: EdgeInsets.only(top: 50),
        // width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text(
                      'Profil Kamu',
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
                      'Disini kamu bisa ganti profile kamu',
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  cursorColor: Colors.orange[900],
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      labelText: 'Nama Lengkap',
                      labelStyle: TextStyle(
                        color: Colors.orange[900],
                        fontFamily: 'Lato',
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  cursorColor: Colors.orange[900],
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.orange[900],
                        fontFamily: 'Lato',
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  cursorColor: Colors.orange[900],
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      labelText: 'Pekerjaan',
                      labelStyle: TextStyle(
                        color: Colors.orange[900],
                        fontFamily: 'Lato',
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  cursorColor: Colors.orange[900],
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[900])),
                      labelText: 'No. Telepon',
                      labelStyle: TextStyle(
                        color: Colors.orange[900],
                        fontFamily: 'Lato',
                      )),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: 250,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato'),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: GantiPassword(),
                      type: PageTransitionType.topToBottom,
                      duration: Duration(milliseconds: 800),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'Ganti Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
