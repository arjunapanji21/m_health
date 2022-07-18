import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Modul2 extends StatefulWidget {
  const Modul2({Key? key}) : super(key: key);

  @override
  State<Modul2> createState() => _Modul2State();
}

class _Modul2State extends State<Modul2> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const String url = 'https://www.youtube.com/watch?v=5ZI3vXTjai4';
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
          enableCaption: false,
          isLive: false,
        ));
  }
  
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height-40,
                      child: Align(
                        alignment: Alignment.center,
                        child: YoutubePlayerBuilder(
                          player: YoutubePlayer(
                            controller: controller,
                          ),
                          builder: (context, player) {
                            return Column(
                              children: [
                                // some widgets
                                player,
                                //some other widgets
                              ],
                            );
                          }),
                      ),
                    ),
                  ],
                ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Modul 2"),
              backgroundColor: Colors.red.withOpacity(0.8),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YoutubePlayerBuilder(
                        player: YoutubePlayer(
                          controller: controller,
                        ),
                        builder: (context, player) {
                          return Column(
                            children: [
                              // some widgets
                              player,
                              //some other widgets
                            ],
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 20),
                          Text("Manajemen Pemberian Nutrisi",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Text("     Jika pasien Anda tidak dapat mengonsumsi makanan dalam jumlah yang cukup untuk memenuhi kebutuhan nutrisi, maka pemberian makanan dapat diberikan melalui selang ke dalam lambung untuk memberikan nutrisi yang cukup. Nutrisi yang cukup tergantung pada jenis dan jumlah susu formula yang tepat. Penyedia layanan kesehatan Anda akan meresepkan jadwal makan Anda, formula dan jumlah air yang dibutuhkan untuk nutrisi dan hidrasi yang optimal.\n     Setelah cedera otak traumatis, tingkat metabolisme dapat meningkat dan kebutuhan energi dan protein mungkin tinggi untuk menyediakan nutrisi untuk penyembuhan. Atrofi otot juga sering terjadi karena penurunan mobilitas selama waktu ini. Kebutuhan kalori dan protein cenderung menurun beberapa bulan setelah cedera, jadi pemberian makanan melalui selang mungkin perlu disesuaikan untuk menghindari penambahan berat badan yang tidak diinginkan.\n     Penting untuk memantau berat badan dan mengetahui tujuan berat badan pasien Anda. Jika pasien Anda mengalami perubahan berat badan yang signifikan (naik atau turun lebih dari 2 kg dalam 1 minggu) hubungi perawat atau dokter Anda.",
                                textAlign: TextAlign.justify,
                                style:
                                    TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Persiapan:",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Simpan produk yang belum dibuka pada suhu kamar, bukan di bawah sinar matahari langsung.\n◦ Cuci tangan Anda sebelum menangani produk.\n◦ Kocok kaleng atau botol dengan baik dan bersihkan bagian atasnya sebelum dibuka.\n◦ Berikan makanan saat produk berada pada suhu kamar.\n◦ Tutup semua produk yang tidak digunakan dan simpan di lemari es.\n◦ Simpan produk selama maksimal 24 jam; jika tidak digunakan, buang sisanya.\n◦ Saat memberikan produk makanan setelah didinginkan, biarkan produk hangat sampai suhu kamar dengan meletakkannya di atas meja selama sekitar 15 menit sebelum memasukkannya melalui tabung makanan. Jangan sekali-kali memasukkan produk makanan tabung ke microwave.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Perlengkapan:",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Susu\n◦ Sendok dan Wadah untuk membuat susu (gelas atau botol bersih)\n◦ jarum suntik 60 ml\n◦ Air putih",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Posisi Pasien:",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Opsi 1: Disangga di tempat tidur atau di sofa dalam posisi setengah duduk dengan kepala terangkat setidaknya 30 derajat\n◦ Opsi 2: Duduk di kursi\n◦ Jangan pernah berbaring telentang",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Prosedur Pemberian Makan Tabung",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "1. Cuci tangan.\n2. Kaji perut untuk distensi.\n3. Tinggikan kepala tempat tidur setidaknya 30 derajat.\n4. Periksa residu pengumpanan tabung periksa.\n5. Masukkan spuit 60 ml ke dalam port dan tuangkan produk makanan ke dalam spuit.\n6. Masukan susun secara gravitasi.\n7. Tambahkan lebih banyak susu sampai jumlah yang diinginkan dimasukkan.\n8. Bilas dengan 50 ml air.\n9. Tutup tabung.\n10. Tetap dalam posisi tegak setidaknya selama satu jam setelah pemberian susu.\n11. Bilas peralatan secara menyeluruh.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Membersihkan Peralatan",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Lakukan perawatan di tempat sesuai perintah perawat.\n◦ Kantong makan selang dapat dibersihkan dengan sabun dan air.\n◦ Pastikan untuk mengalirkan air sabun melalui pipa.\n◦ Bilas dengan air untuk memastikan semua sabun keluar dari kantong dan selang.\n◦ Jarum suntik dan tabung dapat dibersihkan dengan sabun dan air atau ditempatkan di mesin pencuci piring di rak paling atas. ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Perawatan Mulu",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Perawatan mulut yang baik sangat penting, bahkan saat pasien Anda tidak makan atau minum.\n◦ Sikat seluruh permukaan gigi, gusi dan lidah minimal dua kali sehari.\n◦ Gunakan sikat gigi berbulu lembut Disarankan pasta gigi yang lembut.\n◦ Gunakan obat kumur bebas alcohol\n◦ Jika bibir pasien Anda kering, gunakan krim pelembab berbahan dasar lanolin untuk melembabkan bibir.\n◦ Beritahu perawat Anda jika kekeringan tidak hilang. Lebih banyak cairan mungkin perlu ditambahkan melalui tabung.\n◦ Beritahu penyedia layanan kesehatan jika pasien Anda mengalami gusi berdarah atau luka.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Pencegahan tabung tersumbat",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "◦ Bilas tabung dengan 5 ml air di antara setiap pengobatan.\n◦ Untuk mencegah penyumbatan tabung, siram tabung dengan 30-50 ml air hangat: \nSebelum dan sesudah setiap menyusui\nSetiap 4 jam jika pasien menerima makanan terus menerus\nSetelah memeriksa residu isi perut\n◦ Jangan mencampur obat dengan susu formula.\n◦ Obat harus dalam bentuk cair bila memungkinkan. Jika tidak, hancurkan hingga halus dan pastikan terdispersi dengan baik dalam air.\n◦ Berikan beberapa obat satu per satu dan bilas tabung dengan air hangat sebelum dan sesudahnya.\n◦ Buka klem saat membilas, memberi makan, atau memberikan obat.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                            child: Text(
                                "Apa yang harus saya lakukan ketika tabung tersumbat?",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "• Sedot dengan plunger ke dalam jarum suntik, pasang ke tabung pengisi dan gerakkan dengan lembut bolak-balik untuk melonggarkan sumbatan.\n• Tarik keluar sebanyak mungkin isi tabung.\n• Pijat tabung untuk melonggarkan sisa.\n• Hubungi penyedia layanan kesehatan Anda jika sumbatan tidak mudah dilepaskan.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}