import 'package:Medicare/themeData.dart';
import 'package:flutter/material.dart';
import 'package:Medicare/models/articles.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.darkGreen,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Peran Keluarga Dalam Menjaga Kesehatan Mental Anak',
                textAlign: TextAlign.center,
                style: AppTheme.articleHeader,
              ),
            ),
            Image.asset('assets/images/anakibu.jpg'),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '“Bukan hanya kesehatan fisik, kesehatan mental anak juga penting untuk dijaga. Sebab dengan kesehatan mental yang baik, anak mampu berkembang di lingkungan sosial dengan lebih baik. Oleh sebab itu, jika anak menunjukkan gejala gangguan kesehatan mental, maka keluarga juga perlu mewaspadainya dan mengajaknya ke psikolog untuk dilakukan evaluasi dan perawatan yang mungkin dibutuhkan.”',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Halodoc, Jakarta – Bagi orangtua, akan sangat mudah bagi mereka untuk mengidentifikasi kebutuhan fisik anak mereka. Mulai dari makanan bergizi, pakaian hangat saat cuaca dingin, dan waktu tidur pada jam yang wajar. Namun, kebutuhan mental dan emosional anak mungkin tidak begitu jelas. Padahal kesehatan mental anak juga memainkan peran yang penting. Saat kesehatan mental anak terjaga dengan baik, maka ini akan memungkinkan anak untuk berpikir jernih, memiliki perkembangan sosial yang baik, dan mempelajari keterampilan baru. Selain itu, menemani anak dan memberikan kata-kata penyemangat dari orang dewasa juga penting untuk membantu anak-anak mengembangkan kepercayaan diri, harga diri yang tinggi, dan pandangan emosional yang sehat tentang kehidupan.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
