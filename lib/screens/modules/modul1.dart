import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Modul1 extends StatefulWidget {
  const Modul1({Key? key}) : super(key: key);

  @override
  State<Modul1> createState() => _Modul1State();
}

class _Modul1State extends State<Modul1> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const String url = 'https://www.youtube.com/watch?v=3MJuhE4QGGI';
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
              title: const Text("Modul 1"),
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
            children: [
              const Text("Manajemen Perawatan Luka Di Rumah",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("1. Persiapkan Diri Anda dan Perbekalan Anda",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "a. Pilih lokasi di rumah Anda untuk melakukan penggantian balutan. Lokasi harus memiliki pencahayaan yang baik, ruang yang memadai, akses ke air mengalir, permukaan yang keras seperti meja (bukan lantai atau tempat tidur).",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "b. Anda harus nyaman saat melakukan perawatan luka. Nyalakan lampu di ruang kerja Anda, matikan semua kipas angin dan tutup semua jendela.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text("c. Tempatkan kantong sampah di dekat Anda.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "d. Bersihkan permukaan keras yang Anda pilih (misalnya, meja) dengan lap permukaan antibakteri. Jika Anda tidak memiliki lap permukaan antibakteri, bersihkan permukaan dengan kain bersih dan air sabun hangat.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "e. Letakkan perlengkapan yang Anda perlukan di permukaan yang bersih dan keras.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text("Daftar peralatan yang harus disediakan adalah:",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                child: Text(
                    "• Lap permukaan antibakteri atau kain bersih dan sabun cuci piring cair\n• Pembersih tangan atau sabun tangan cair\n• Sarung tangan medis bersih (jika ada)\n• Kantong plastik untuk sampah\n• Baki untuk menyimpan perlengkapan\n• Handuk bersih\n• Air keran, salin normal atau pembersih luka komersial\n• Bagan Pemeriksaan Luka\n• Pensil atau pena\n• Kamera digital/ponsel pintar/tablet\n• Kassa steril\n• Gunting bersih\n• Alkohol swab untuk membersihkan gunting ",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "f. Baca dengan cermat petunjuk pada kemasan balutan ATAU tinjau petunjuk yang diberikan oleh ahli kesehatan Anda (biasanya perawat, dokter, atau apoteker).",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("2. Cuci Tangan Anda",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "Mencuci tangan dengan sabun dan air adalah yang terbaik!",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Basahi tangan Anda dengan air hangat dan kemudian oleskan sedikit sabun ke satu telapak tangan. (Lepaskan cincin sebelum dicuci.)",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Membasuh kedua telapak tangan, punggung tangan, sela-sela jari di kedua sisi, ujung jari kemudian ibu jari.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "c. Keringkan tangan Anda dengan baik dengan handuk kertas atau handuk bersih dan kemudian gunakan handuk untuk mematikan keran.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("3. Lepas dan Buang Dressing",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Jika Anda memiliki akses ke sarung tangan medis yang bersih, kenakan.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Lepaskan balutan lama dengan hati-hati dengan mengangkat ujungnya perlahan dan bergerak di sekitar tepi balutan sampai seluruh balutan terlepas. Berhati-hatilah agar tidak menyebabkan luka pada luka dan kulit di sekitar luka.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text("c. Lihat kondisi balutan dan lepaskan.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "d. Jika terdapat kesulitan dalam melepaskan balutan, hubungi ahli kesehatan Anda.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "e. Masukkan balutan kotor ke dalam kantong plastik. Jika Anda telah mengenakan sarung tangan medis yang bersih, lepaskan dan masukkan ke dalam kantong plastik.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("4. Cuci Tangan Anda LAGI",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "Cuci tangan Anda lagi seperti yang Anda lakukan pada Langkah 2.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("5. Bersihkan Luka",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Tempatkan handuk bersih di bawah area yang terluka untuk menangkap cairan pembersih apa pun.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Jika Anda memiliki akses ke sarung tangan medis yang bersih, kenakan.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "c. Tuangkan cairan pembersih luka (NaCl 0,9% atau air hangat bersih) ke dalam kom atau semprotkan perlahan ke atas luka.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "d. Dengan tangan bersih atau bersarung tangan (jika tersedia) atau dengan forsep dari baki pembalut (jika tersedia) gunakan bantalan kasa untuk menyeka cairan luka (drainase) atau potongan balutan yang ditemukan di luka dengan lembut.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "e. Ulangi langkah ini (setiap kali menggunakan kain kasa baru) sampai luka tampak bersih. Anda mungkin mengharapkan sedikit pendarahan yang akan berhenti setelah pembersihan selesai.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "f. Setelah membersihkan luka, keringkan dengan lembut kulit di sekitar bagian luar luka menggunakan kain kasa bersih.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "g. Buang semua kain kasa bekas ke dalam kantong plastik.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("6. Kaji Luka dan Kulit Sekitarnya",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Sekarang setelah luka dan kulit di sekitarnya bersih, Anda bisa memeriksanya. Gunakan Bagan Pemeriksaan Pasien dan Luka.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Tulis tanggal penggantian balutan dan, untuk setiap pertanyaan, tandai jawaban yang paling menggambarkan keadaan Anda dan lukanya.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "c. Simpan semua catatan Anda sehingga Anda memiliki catatan tentang bagaimana lukanya membaik, tetap sama, atau memburuk. Ini akan membantu Anda memberi profesional kesehatan gambaran yang jelas tentang kemajuan atau kekurangan kemajuan luka Anda.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "d. Ambil foto luka pada setiap penggantian balutan jika Anda memiliki kamera digital/ponsel/tablet. Ini dapat membantu Anda melacak perubahan dari waktu ke waktu, dan jika Anda perlu menghubungi profesional perawatan kesehatan, Anda akan dapat menunjukkan kepada mereka seperti apa lukanya sekarang dan di masa lalu. Ini akan membantu mereka memutuskan apakah perawatan perlu diubah.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Bagan Inspeksi Pasien dan Luka",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                  },
                  border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  children: [
                    TableRow(children: [
                      Column(children: const [
                        Text('Dibandingkan Dengan Balutan Terakhir',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14.0),
                        )]),
                      Column(children: const [
                        Text('Membaik', textAlign: TextAlign.center, style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('Sama', textAlign: TextAlign.center, style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('Memburuk', textAlign: TextAlign.center, style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Perasaan pasien...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Nyeri luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Ukuran luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Cairan (drainase) yang keluar dari luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Bau dari luka (bukan balutan)...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Bengkak di sekitar luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Jumlah kemerahan di sekitar luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Suhu kulit di sekitar luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: const [
                        Text('Kelembaban pada kulit di sekitar luka...',
                            style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                      Column(children: const [
                        Text('', style: TextStyle(fontSize: 14.0))
                      ]),
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("7. Terapkan Dressing Baru",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Buka bungkus pembalut, berhati-hatilah agar tidak menyentuh bagian dalam pembalut. Pegang ujung balutan dan keluarkan dari kemasannya. Pastikan balutan cukup besar untuk menutupi seluruh luka dengan sisa 2 cm; tidak ada perekat yang boleh menyentuh luka itu sendiri.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Jika pembalutnya berperekat (artinya akan menempel pada kulit Anda dengan sendirinya), lepaskan kain kasa atau lapisan pelindung perekat.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "c. Letakkan balutan di atas bagian tengah luka dan tekan perlahan pada tempatnya.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "d. Ratakan dengan lembut tepi perekat ke bawah. Pastikan tidak ada celah yang memungkinkan masuknya udara, air, atau kotoran.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "e. Jika Anda menggunakan balutan yang tidak berperekat, letakkan balutan di tengah luka dan gunakan selotip atau balut dengan kain kasa (dibungkus dengan longgar) agar balutan tetap pada tempatnya.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "f. Setelah menggunakan peralatan apa pun, cuci dengan air keran yang hangat, bersabun, dan bersihkan dengan lap alkohol atau lap permukaan antibakteri. Gunakan peralatan ini hanya untuk penggantian balutan Anda. Simpan dalam kantong plastik yang bersih dan dapat ditutup kembali di wadah persediaan pembalut Anda.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "g. Jika Anda mengenakan sarung tangan medis yang bersih, lepaskan dan masukkan ke dalam kantong sampah.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "h. Tempatkan sisa sampah di kantong sampah, tutup kantong dan buang ke tempat sampah.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "i. Bersihkan ruang kerja Anda dengan lap permukaan antibakteri. Jika Anda tidak memiliki lap permukaan antibakteri, bersihkan permukaan dengan kain bersih dan air sabun hangat.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("8. Cuci Tanganmu LAGI",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "Cuci tangan Anda lagi seperti yang Anda lakukan pada Langkah 2 dan 4.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("9. Tindak Lanjut",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "a. Jika Anda mengganti pakaian orang lain, tanyakan apakah mereka memiliki pertanyaan atau masalah.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "b. Diskusikan atau pikirkan apakah Anda perlu menghubungi profesional perawatan kesehatan berdasarkan apa yang Anda lihat dan rasakan pada Langkah 6. Ketika Anda melihat lebih dekat pada luka, apakah lukanya membaik, tetap sama atau memburuk? Jika keadaan semakin memburuk, hubungi profesional perawatan kesehatan sesegera mungkin karena mungkin perlu waktu sebelum bertemu atau berbicara dengan seseorang yang dapat membantu.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Text(
                    "c. Periksa persediaan perlengkapan Anda dan dapatkan/pesan lebih banyak jika Anda kehabisan.",
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