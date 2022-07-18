import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Modul5 extends StatefulWidget {
  const Modul5({Key? key}) : super(key: key);

  @override
  State<Modul5> createState() => _Modul5State();
}

class _Modul5State extends State<Modul5> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const String url = 'https://www.youtube.com/watch?v=W8XdrnDvirU';
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
              title: const Text("Modul 5"),
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
                          Text("Mengenal Tanda-tanda Infeksi",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Text("     Sebuah luka di kulit akibat cedera atau operasi menciptakan jalan masuk terbuka bagi bakteri untuk masuk ke dalam tubuh dan mulai berkembang biak. Anda harus menghubungi profesional perawatan kesehatan. Berikut adalah beberapa tanda dan gejala paling umum yang terkait dengan infeksi luka:",
                                textAlign: TextAlign.justify,
                                style:
                                    TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "1. Demam",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Setelah operasi, biasanya pasien mengalami demam ringan di bawah 37,5 derajat Celcius. Namun, jika demam mencapai 101 atau lebih dan terus berlanjut, itu bisa mengindikasikan kemungkinan infeksi luka. Pasien yang mengalami demam mungkin juga mengalami sakit kepala dan nafsu makan berkurang.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "2. Perasaan Malaise Secara Keseluruhan",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Menanyakan perasaan pasien dapat menjadi bagian penting dalam menilai infeksi luka. Individu yang pulih dari operasi atau cedera harus merasa lebih baik setiap hari. Ketika mereka tidak dan memiliki perasaan kelelahan dan kekurangan energi yang berlanjut atau memburuk, ini bisa menjadi indikasi bahwa mereka memiliki infeksi lokal atau sistemik. Terkadang pasien yang pulih dari operasi yang mengalami infeksi mungkin merasa lebih baik untuk sementara waktu dan kemudian tiba-tiba merasa jauh lebih buruk.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "3. Drainase Hijau, Tan, atau Pedas",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Biasanya, sayatan atau luka mengalir jernih atau memiliki eksudat sedikit kuning. Drainase luka yang sehat dapat dikelola dengan pembalut atau terapi tekanan negatif. Jika drainase menjadi purulen dengan bau yang menyengat atau busuk, itu bisa mengindikasikan infeksi.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "4. Peningkatan Rasa Sakit pada Luka",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Umumnya, pasien yang sembuh dengan baik dari operasi atau cedera akan menemukan bahwa rasa sakit mereka mereda. Meskipun mereka mungkin memerlukan obat pereda nyeri pada awalnya, mereka harus dapat mengurangi penggunaan obat dan akhirnya menghentikannya dengan nyaman seiring waktu. Jika pasien mengalami rasa sakit yang terus menerus atau meningkat, itu bisa menjadi gejala infeksi luka. Menanyakan pasien tentang tingkat nyeri mereka secara berkala dan melacak penggunaan obat nyeri dapat membantu mengidentifikasi infeksi yang mendasarinya.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "5. Kemerahan Di Sekitar Luka",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Awalnya, luka tampak sedikit merah karena proses penyembuhan peradangan alami, tetapi kemerahan itu akan berkurang secara bertahap dalam waktu sekitar 5-7 hari. Kemerahan yang lebih dalam di sekitar luka yang terus meluas dan memburuk adalah tanda infeksi luka. Anda dapat melacak apakah kemerahan meluas dengan mengambil foto atau menggambar garis di sekitar area merah dengan spidol dan memeriksa apakah kemerahan meluas melewati garis.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "6. Pembengkakan Area Luka",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Seperti kemerahan, pembengkakan adalah hal yang normal pada tahap awal penyembuhan luka. Namun, pembengkakan harus terus berkurang. Pembengkakan terus-menerus bisa menjadi tanda lebih lanjut dari infeksi atau komplikasi lain.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "7. Kulit Lebih Hangat Di Sekitar Luka",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Meskipun normal jika kulit di sekitar luka terasa lebih hangat, ketika kulit di sekitar sayatan terasa sangat hangat saat disentuh dan tidak mulai mendingin, itu bisa menunjukkan bahwa tubuh sedang melakukan kampanye melawan infeksi.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 14)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                                "8. Hilangnya Fungsi dan Gerakan",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                                "Sinyal lain dari infeksi luka yang mungkin memerlukan perawatan adalah ketika pasien kehilangan kemampuan untuk menggerakkan area yang terluka secara normal. Biasanya rasa terbakar, mati rasa, atau kesemutan di sekitar luka ketika pasien mencoba untuk bergerak, tetapi mereka harus dapat menggerakkan area yang terluka tanpa banyak kesulitan atau rasa sakit.",
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
