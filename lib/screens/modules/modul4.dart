import 'package:flutter/material.dart';

class Modul4 extends StatefulWidget {
  const Modul4({Key? key}) : super(key: key);

  @override
  State<Modul4> createState() => _Modul4State();
}

class _Modul4State extends State<Modul4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 4"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Mengenal Tanda-tanda Kegawatdaruratan",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "     Jika anggota keluarga mengalami cedera di kepala dan Anda melihat salah satu gejala cedera otak atau ada sesuatu yang tidak beres, segera hubungi penyedia layanan kesehatan Anda. Jelaskan cedera dan gejalanya dan tanyakan apakah Anda harus pergi ke unit gawat darurat.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Cari Perhatian Medis Segera, Jika Salah Satu Gejala Berikut Terjadi:",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "◦ Muntah berulang\n◦ Sakit kepala yang memburuk atau parah\n◦ Tidak dapat tetap terjaga pada saat pasien Anda biasanya terjaga\n◦ Sangat mengantuk atau tidak bisa dibangunkan\n◦ Satu pupil (bagian hitam di tengah mata) lebih besar dari yang lain\n◦ Kejang \n◦ Tidak dapat mengenali orang atau tempat\n◦ Semakin bingung, gelisah, atau gelisah\n◦ Kesulitan berjalan, dengan keseimbangan atau penurunan koordinasi\n◦ Kesulitan dengan penglihatan\n◦ Perilaku yang tidak biasa\n◦ Kehilangan kesadaran (kehilangan kesadaran yang singkat harus ditanggapi dengan serius dan orang tersebut harus dipantau dengan cermat)\n◦ Gejala apa pun yang mengkhawatirkan Anda",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}