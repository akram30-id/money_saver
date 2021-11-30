import 'package:flutter/material.dart';

class SavingsDetail extends StatefulWidget {
  @override
  _SavingsDetailState createState() => _SavingsDetailState();
}

class _SavingsDetailState extends State<SavingsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          'Liburan Akhir Tahun',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: 'Lato'),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black54,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        // margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -1),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 320,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange[100],
                          offset: Offset(2, 5),
                          blurRadius: 25)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Total Saldo :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          'Rp. 3,600,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity - 20,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Notes :',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pokoknya gamau tau tahun baru ini harus jadi ke puncak.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 200),
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange[100],
                      blurRadius: 25,
                      offset: Offset(0, -5),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Container(
                        width: 75,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange[300],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Previous Savings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2021/12/5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            ),
                            Text(
                              'Rp. 1,200,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity - 20,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2021/11/5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            ),
                            Text(
                              'Rp. 1,200,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity - 20,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2021/10/5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            ),
                            Text(
                              'Rp. 1,200,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'Lato'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity - 20,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ]),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ]),
                          child: Center(
                            child: Text(
                              'Edit Plan',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 64,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
