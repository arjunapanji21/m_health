import 'package:flutter/material.dart';

class Senin extends StatefulWidget {
  const Senin({Key? key}) : super(key: key);

  @override
  State<Senin> createState() => _SeninState();
}

class _SeninState extends State<Senin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Mengatur Jadwal Perawatan Pasien",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                    color: Colors.black, 
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  children: [
                    TableRow(children: [
                      Column(children: [Text('Waktu')],),
                      Column(children: [Text('Kegiatan')],),
                      Column(children: [Text('PJ')],),
                    ]),
                    TableRow(children: [
                      Column(children: [Text('06.00-08.00')],),
                      Column(children: [TextField()],),
                      Column(children: [TextField()],),
                    ]),
                  ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
