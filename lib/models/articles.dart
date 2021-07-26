class ArticleUpdate {
  String name;
  String hashtags;
  String imageAsset;
  String descheading;
  String description;

  ArticleUpdate({
    required this.name,
    required this.hashtags,
    required this.imageAsset,
    required this.descheading,
    required this.description,
  });
}

var articleList = [
  ArticleUpdate(
    name: 'Peran Keluarga Dalam Menjaga Kesehatan Mental Anak',
    hashtags: '#Kesehatan anak',
    imageAsset: 'assets/images/anak ibu.jpg',
    description:
        'Halodoc, Jakarta – Bagi orangtua, akan sangat mudah bagi mereka untuk mengidentifikasi kebutuhan fisik anak mereka. Mulai dari makanan bergizi, pakaian hangat saat cuaca dingin, dan waktu tidur pada jam yang wajar. Namun, kebutuhan mental dan emosional anak mungkin tidak begitu jelas. Padahal kesehatan mental anak juga memainkan peran yang penting. Saat kesehatan mental anak terjaga dengan baik, maka ini akan memungkinkan anak untuk berpikir jernih, memiliki perkembangan sosial yang baik, dan mempelajari keterampilan baru. Selain itu, menemani anak dan memberikan kata-kata penyemangat dari orang dewasa juga penting untuk membantu anak-anak mengembangkan kepercayaan diri, harga diri yang tinggi, dan pandangan emosional yang sehat tentang kehidupan.',
    descheading:
        '“Bukan hanya kesehatan fisik, kesehatan mental anak juga penting untuk dijaga. Sebab dengan kesehatan mental yang baik, anak mampu berkembang di lingkungan sosial dengan lebih baik. Oleh sebab itu, jika anak menunjukkan gejala gangguan kesehatan mental, maka keluarga juga perlu mewaspadainya dan mengajaknya ke psikolog untuk dilakukan evaluasi dan perawatan yang mungkin dibutuhkan.”',
  )
];
