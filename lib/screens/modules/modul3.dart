import 'package:flutter/material.dart';

class Modul3 extends StatefulWidget {
  const Modul3({Key? key}) : super(key: key);

  @override
  State<Modul3> createState() => _Modul3State();
}

class _Modul3State extends State<Modul3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 3"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Manajemen Stres",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    "Ada beberapa teknik yang dapat membantu Anda mengelola dan mengurangi stres. ika Anda dapat menerapkan bahkan dua atau tiga dari saran berikut, Anda mungkin merasa stres berkurangdan lebih bisa mengendalikan hidup Anda.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Luangkan waktu untuk bermeditasi atau merenung.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Menghabiskan 10 hingga 20 menit dua kali sehari untuk "menjernihkan pikiran" dapat memberikan keajaiban ketika Anda merasa stres. Beberapa caregiver mempelajari teknik meditasi dari kelas, kaset, DVD, atau buku, sementara yang lain hanya meluangkan waktu untuk merenung dengan tenang. Apa pun cara yang Anda pilih, penting bagi Anda untuk memperlambat dan fokus menjernihkan pikiran dari semua pikiran yang mungkin meningkatkan kecemasan Anda.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Berolahraga adalah cara lain yang baik untuk menyembuhkan pikiran dan tubuh.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Ini adalah salah satu teknik paling terkenal untuk mengurangi stres, merevitalisasi energi, dan menjaga kesehatan Anda. Jalan cepat beberapa kali setiap minggu memberi Anda manfaat kesehatan yang signifikan. Ada banyak pilihan indoor yang bagus juga, seperti yoga atau tai chi.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Rawat diri Anda dengan melakukan pemeriksaan kesehatan secara teratur.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Minum obat sesuai petunjuk, dan makan makanan sehat. Merawat tubuh Anda meningkatkan pandangan emosional dan kesejahteraan Anda.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Cobalah untuk melakukan sesuatu yang Anda nikmati setiap hari.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Memelihara taman, menonton acara TV favorit, membaca artikel yang menarik minat Anda, atau melakukan hobi favorit dapat membantu Anda "menengahkan" dan mengingatkan Anda bahwa Anda masih memiliki kehidupan di luar pengasuhan. Ciptakan tempat perlindungan dengan mengubah ruangan atau bagian dari ruangan menjadi tempat nyaman Anda yang mengingatkan Anda untuk bersantai dan menikmati. Anda harus meluangkan waktu—bahkan selama 10 atau 15 menit—untuk mengurus diri sendiri.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Buat daftar hal-hal yang perlu dilakukan.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Mencoba menyimpan semua tugas pengasuhan Anda di kepala Anda akan membuat Anda khawatir tentang apa yang mungkin telah Anda lupakan. Kalender dan perencana juga dapat membantu Anda memprioritaskan dan melacak tanggung jawab Anda.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text("Lakukan satu hal pada satu waktu.",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Menyelesaikan tugas seperti berbicara di telepon, membuka surat, dan memasak makanan pada saat yang sama hanya menambah tingkat stres Anda. Fokus pada satu hal pada satu waktu. Ketika satu tugas selesai, lanjutkan ke yang berikutnya.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Tetapkan batasan pada apa yang dapat Anda capai, dan belajarlah untuk mengatakan "tidak" lebih sering.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Jika Anda merasa lelah, turunkan harapan Anda dan periksa kembali prioritas Anda. Anda tidak dapat melakukan semuanya. Tidak ada yang bisa.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Jangan mencoba mengatasinya sendirian.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Pertahankan persahabatan dan hubungan keluarga meskipun Anda hanya punya waktu untuk menelepon setiap minggu. Bergabunglah dengan kelompok pendukung di mana Anda dapat berbagi pengalaman, atau berbicara dengan seorang konselor. Jangan berpikir Anda bisa "melakukannya sendiri" dalam peran pengasuhan Anda. Terkadang, membicarakan kekhawatiran Anda dapat membantu Anda mengatasinya.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Terhubung secara online dengan teman dan dunia luar.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Anda tetap dianjurkan untuk melakukan percakapan meskipun online dengan teman atau para kerabat dekat Anda',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Buatlah jurnal tentang pikiran dan perasaan Anda.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Banyak pengasuh menemukan bahwa menuliskan pemikiran mereka memberi mereka saluran emosional dan membantu mereka menemukan kejelasan di tengah kebingungan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Pertahankan selera humor Anda.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Terkadang tidak ada yang bisa dilakukan selain tertawa, dan tertawa sangat baik untuk kesehatan mental dan fisik Anda. Carilah buku dan film yang ringan atau lucu. Hal-hal lucu dapat terjadi bahkan pada hari-hari terburuk Anda.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Jangan menutup diri.',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Tetap terbuka pada saat-saat ketika Anda masih dapat menikmati hal-hal tertentu dengan atau tanpa orang yang Anda sayangi, seperti berjalan-jalan di taman atau bermain dengan cucu atau hewan peliharaan. Hidup tanpa kesenangan hanya membuat Anda lebih rentan terhadap stres.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Beri diri Anda penghargaan',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Sebagai pengasuh untuk seseorang dengan TBI, Anda melakukan yang terbaik yang Anda bisa. Pastikan untuk mengakui diri sendiri atas semua hal sulit yang Anda lakukan dan biarkan diri Anda merasakan pencapaian dan kepuasan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text('Tanyakan pada diri sendiri, “Apa yang saya pelajari dari kondisi ini?”',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Text(
                    'Kemungkinannya adalah bahwa dalam perjalanan pengasuhan Anda, Anda telah berubah dan mengembangkan keterampilan baru. Anda telah melewati rintangan yang Anda pikir tidak akan pernah Anda atasi. Beri pujian pada diri Anda sendiri untuk pertumbuhan itu.',
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