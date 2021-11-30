import 'package:flutter/material.dart';
import 'package:money_saver/ui/user_flow/savings_detail.dart';
import 'package:page_transition/page_transition.dart';

class Savings extends StatefulWidget {
  @override
  _SavingsState createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
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
                      'Rencana Tabungan \nKamu',
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
                      'Klik salah satu untuk lihat riwayat tabungan',
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: SavingsDetail(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              SizedBox(
                height: 16,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 16,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
