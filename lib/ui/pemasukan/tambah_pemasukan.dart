import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_saver/ui/custom/currency.dart';
import 'package:money_saver/ui/custom/date_pick.dart';
import 'package:money_saver/ui/pemasukan/pemasukan.dart';
import 'package:page_transition/page_transition.dart';
import 'package:intl/intl.dart';

class TambahPemasukan extends StatefulWidget {
  @override
  _TambahPemasukanState createState() => _TambahPemasukanState();
}

class _TambahPemasukanState extends State<TambahPemasukan> {
  List _sumber = [
    'Profit Bisnis',
    'Gaji',
    'Dividen Yield',
    'Profit Trade',
    'Dagang',
    'Jajan Orang Tua',
    'Lainnya'
  ];

  String sumber;
  String pilihTanggal, labelText;
  DateTime tgl = new DateTime.now();
  final TextStyle valueStyle = TextStyle(fontSize: 16.0);
  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: tgl,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != tgl) {
      setState(() {
        tgl = picked;
        pilihTanggal = new DateFormat.yMd().format(tgl);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
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
      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment(-0.8, 0),
                  child: Text(
                    'Tambahkan Pemasukan',
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
              ],
            ),
            SizedBox(
              height: 16,
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
                      Text('Jumlah Pemasukan'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            // ignore: deprecated_member_use
                            WhitelistingTextInputFormatter.digitsOnly,
                            Currency()
                          ],
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.orange,
                            prefixIcon: Icon(
                              Icons.attach_money_outlined,
                              color: Colors.orange,
                            ),
                            prefixText: 'Rp. ',
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
                      Text('Tanggal Pemasukan'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            FormField(builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.orange,
                              prefixIcon: Icon(
                                Icons.date_range,
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
                            child: DropdownButtonHideUnderline(
                                child: DateDropdown(
                              labelText: labelText,
                              valueText: new DateFormat.yMd().format(tgl),
                              valueStyle: valueStyle,
                              onPressed: () {
                                _selectedDate(context);
                              },
                            )),
                          );
                        }),
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
                      Text('Pekerjaan'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            FormField(builder: (FormFieldState<String> state) {
                          return InputDecorator(
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
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: Text('Pilih Sumber Pemasukan'),
                                items: _sumber.map((value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    sumber = value;
                                    print(sumber);
                                  });
                                },
                                value: sumber,
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
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
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Tambahkan',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'Lato'),
                      ),
                    ),
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
    );
  }
}
