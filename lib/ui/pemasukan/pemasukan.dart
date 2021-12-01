import 'package:flutter/material.dart';
import 'package:money_saver/ui/pemasukan/tambah_pemasukan.dart';
import 'package:page_transition/page_transition.dart';

class Pemasukan extends StatefulWidget {
  @override
  _PemasukanState createState() => _PemasukanState();
}

class _PemasukanState extends State<Pemasukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: TambahPemasukan(),
              type: PageTransitionType.topToBottom,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        title: Text(
          'Detail Pemasukan',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato'),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment(0, 0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment(0.8, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 85,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.restore_page_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              //uang gaji
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
                        'Gaji',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 12,
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
                                'Jumlah :',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'IDR 5,000,000',
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
                                'Tanggal :',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '2021/30/11',
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
                        'Bisnis',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 12,
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
                                'Jumlah :',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'IDR 7,000,000',
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
                                'Tanggal :',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '2021/30/11',
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
    );
  }
}
