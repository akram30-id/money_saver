import 'package:flutter/material.dart';

class TambahRencana extends StatefulWidget {
  @override
  _TambahRencanaState createState() => _TambahRencanaState();
}

class _TambahRencanaState extends State<TambahRencana> {
  List _frekuensi = [
    'Setiap Hari',
    'Setiap Minggu',
    'Setiap Bulan',
    'Setiap Tahun',
  ];

  String frekuensi;

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
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Tambah Rencana Menabung',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Lato'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tujuan Rencana'),
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
                            hintText: 'Contoh : Pergi Umroh',
                            fillColor: Colors.white,
                            focusColor: Colors.orange,
                            prefixIcon: Icon(
                              Icons.turned_in_outlined,
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
                      Text('Frekuensi'),
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
                                hint: Text('Menabung Setiap...'),
                                items: _frekuensi.map((value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    frekuensi = value;
                                    print(frekuensi);
                                  });
                                },
                                value: frekuensi,
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
                      Text('Notes'),
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
                            hintText:
                                'Harus konsisten pokoknya. Insyaallah jadi!!!',
                            fillColor: Colors.white,
                            focusColor: Colors.orange,
                            prefixIcon: Icon(
                              Icons.notes_outlined,
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
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 285,
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
