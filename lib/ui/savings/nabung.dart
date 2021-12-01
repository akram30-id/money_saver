import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:money_saver/ui/custom/currency.dart';
import 'package:money_saver/ui/custom/date_pick.dart';

class Nabung extends StatefulWidget {
  @override
  _NabungState createState() => _NabungState();
}

class _NabungState extends State<Nabung> {
  List _plan = [
    'Liburan Akhir Tahun',
    'Naik Haji',
    'Sekolah Anak',
  ];

  String plan;
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Menabung',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontFamily: 'Lato'),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text('Pilih Rencana Menabung'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: FormField(builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.orange,
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
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
                            hint: Text('Tabungan untuk...'),
                            items: _plan.map((value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                plan = value;
                                print(plan);
                              });
                            },
                            value: plan,
                          ),
                        ),
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
                  Text('Jumlah Tabungan'),
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
                        hintText: '1,000,000',
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
                  Text('Tanggal Menabung'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: FormField(builder: (FormFieldState<String> state) {
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
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(10)),
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
            ),
            SizedBox(
              height: 64,
            )
          ],
        ),
      ),
    );
  }
}
