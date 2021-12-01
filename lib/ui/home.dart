import 'package:flutter/material.dart';
import 'package:money_saver/ui/pemasukan/pemasukan.dart';
import 'package:money_saver/ui/pengeluaran/pengeluaran.dart';
import 'package:money_saver/ui/user_flow/login.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Container(
          margin: EdgeInsets.only(top: 50, left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hai, Ananda Akram Syahrastani',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontFamily: 'Lato'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: Login(),
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 1000)),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment(-0.75, 0),
                  child: Text(
                    'Rencana Tabungan',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 150,
                    width: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.orange[100],
                                    blurRadius: 25,
                                    offset: Offset(5, 0)),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Align(
                                alignment: Alignment(-0.7, 0),
                                child: Text(
                                  'Liburan Akhir Tahun',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      color: Colors.black54),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 280,
                                height: 2,
                                color: Colors.black45,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Saldo Terakhir :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'IDR 1,200,00',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Setiap :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Sebulan Sekali',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //2
                        Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.orange[100],
                                    blurRadius: 25,
                                    offset: Offset(0, 5)),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Align(
                                alignment: Alignment(-0.7, 0),
                                child: Text(
                                  'Naik Haji',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      color: Colors.black54),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 280,
                                height: 2,
                                color: Colors.black45,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Saldo Terakhir :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'IDR 15,000,000',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Setiap :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Sebulan Sekali',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //3
                        Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.orange[100],
                                    blurRadius: 25,
                                    offset: Offset(0, 5)),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Align(
                                alignment: Alignment(-0.7, 0),
                                child: Text(
                                  'Sekolah Anak',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      color: Colors.black54),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 280,
                                height: 2,
                                color: Colors.black45,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Saldo Terakhir :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'IDR 200,00',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Setiap :',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Sebulan Sekali',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 18,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Pemasukan
                SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment(-0.75, 0),
                  child: Text(
                    'Catatan Pemasukan',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange[100],
                            blurRadius: 25,
                            offset: Offset(0, 5)),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.money,
                        size: 100,
                        color: Colors.orange[900],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Pemasukan',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Lato'),
                          ),
                          Text(
                            'Rp. 12,000,000',
                            style: TextStyle(
                                color: Colors.green[400],
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                fontFamily: 'Lato'),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: Pemasukan(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.orange[900],
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Text(
                                  'Detail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Pengeluaran
                SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment(-0.75, 0),
                  child: Text(
                    'Catatan Pengeluaran',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange[100],
                            blurRadius: 25,
                            offset: Offset(0, 5)),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.money_off,
                        size: 100,
                        color: Colors.orange[900],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Pengeluaran',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Lato'),
                          ),
                          Text(
                            'Rp. 2,000,000',
                            style: TextStyle(
                                color: Colors.red[400],
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                fontFamily: 'Lato'),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: Pengeluaran(),
                                    type: PageTransitionType.rightToLeft,
                                    ),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.orange[900],
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Text(
                                  'Detail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
