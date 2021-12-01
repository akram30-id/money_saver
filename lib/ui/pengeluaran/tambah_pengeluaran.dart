import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:money_saver/ui/custom/currency.dart';
import 'package:money_saver/ui/custom/date_pick.dart';
import 'package:money_saver/ui/pengeluaran/pengeluaran.dart';
import 'package:page_transition/page_transition.dart';

class TambahPengeluaran extends StatefulWidget {
  @override
  _TambahPengeluaranState createState() => _TambahPengeluaranState();
}

class _TambahPengeluaranState extends State<TambahPengeluaran> {
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
                    'Tambahkan Pengeluaran',
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
                      Text('Jumlah Pengeluaran'),
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
                            hintText: 'Contoh : 250,000',
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
                      Text('Tanggal Pengeluaran'),
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
                      Text('Kegunaan'),
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
                            hintText: 'Contoh : Beli Sembako',
                            fillColor: Colors.white,
                            focusColor: Colors.orange,
                            prefixIcon: Icon(
                              Icons.shopping_bag_rounded,
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
                  height: 48,
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
