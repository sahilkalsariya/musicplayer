import 'package:flutter/material.dart';

class songList extends StatelessWidget {
  const songList({Key? key, required this.image, required this.title, required this.subtitle, required this.icon}) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListTile(
        leading:Image.asset(image) ,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: (){},icon: icon,),
      ),
    );
  }
}

class Global {
  static List<Map<String,dynamic>> allSong = [
    {
      'image' :  'https://globalfreeonlineads.com/wp-content/uploads/2020/11/Pathan-Movie-Detail-768x952.jpg',
      'title' : 'JhoomeJoPathaan',
      'subtitle' : 'Arijit Singh',
      'audio' : 'assets/songs/Jhoome Jo Pathaan.mp3',
      'color' : Colors.lightBlueAccent,
    },
    {
      'image' :  'https://pagalnew.com/coverimages/kesariya-brahmastra-500-500.jpg',
      'title' : 'Kesariya',
      'subtitle' : 'Arijit Singh',
      'audio' : 'assets/songs/Kesariya-Brahmastra.mp3',
      'color' : Colors.lightBlue,
    },
    {
      'image' :  'https://pagalfree.com/images/128Manike%20-%20Thank%20God%20128%20Kbps.jpg',
      'title' : 'Manike',
      'subtitle' : 'Yohani1',
      'audio' : 'assets/songs/Manike(PagalWorld.com.se).mp3',
      'color' : Colors.blue,
    },
    {
      'image' :  'https://pagalfree.com/images/128Baarish%20Mein%20Tum%20-%20Neha%20Kakkar%20128%20Kbps.jpg',
      'title' : 'Barish Me Tum',
      'subtitle' : 'Neha Kakkar',
      'audio' : 'assets/songs/Baarish Mein Tum(PagalWorld.com.se).mp3',
      'color' : Colors.blueAccent,
    },
    {
      'image' :  'http://a10.gaanacdn.com/images/song/12/23075612/crop_480x480_1518754052.jpg',
      'title' : 'Tu Man Meri Jaan',
      'subtitle' : 'King',
      'audio' : 'assets/songs/Tu-Maan-Meri-Jaan.mp3',
      'color' : Colors.deepPurple,
    },
    {
      'image' :  'https://assets.thehansindia.com/h-upload/2022/11/05/1319252-bhediya-movie.jpg',
      'title' : 'Apna Bana Le',
      'subtitle' : 'Arijit Singh',
      'audio' : 'assets/songs/Apna Bana Le From Bhediya - DjBaap.Net.mp3',
      'color' : Colors.deepPurpleAccent,
    },
    {
      'image' :  'https://i.ytimg.com/vi/Bw_vbJYzbfI/hqdefault.jpg',
      'title' : 'Rasiya',
      'subtitle' : 'Tushar Joshi',
      'audio' : 'assets/songs/Rasiya - Brahmastra_128-(PagalWorld.Ink).mp3',
      'color' : Colors.indigoAccent,
    },
    {
      'image' :  'https://c.saavncdn.com/044/Deva-Deva-From-Brahmastra-Hindi-2022-20220812225424-500x500.jpg',
      'title' : 'Deva Deva',
      'subtitle' : 'Arijit Singh, Jonita',
      'audio' : 'assets/songs/Deva Deva-(Pagalmaza.Com).mp3',
      'color' : Colors.lightGreen,
    },
    {
      'image' :  'https://img.youtube.com/vi/Is3lBP4PW90/maxresdefault.jpg',
      'title' : 'Teri Galliyon',
      'subtitle' : '	Jubin Nautiyal',
      'audio' : 'assets/songs/Teri Galliyon Se(PagalWorld.com.se).mp3',
      'color' : Colors.green,
    },
    {
      'image' :  'https://aniportalimages.s3.amazonaws.com/media/details/Screenshot_20220201-212421__01.jpg',
      'title' : 'Tumse Pyaar',
      'subtitle' : 'Jubin Nautiyal, Tulsi',
      'audio' : 'assets/songs/Tumse Pyaar Karke(PagalWorld.com.se).mp3',
      'color' : Colors.lightGreenAccent,
    },
    {
      'image' :  'https://i.ytimg.com/vi/ebrbIRFpYLc/maxresdefault.jpg',
      'title' : 'Heer Ranjha ',
      'subtitle' : '	Rito Riba',
      'audio' : 'assets/songs/Dil De Diya Hai(PagalWorld.com.se).mp3',
      'color' : Colors.lime,
    },
    {
      'image' :  'https://c.saavncdn.com/056/Dil-De-Diya-Hai-Shubhendu-Mishra--Hindi-2018-20180510195503-500x500.jpg',
      'title' : 'Dil De Diya Hai',
      'subtitle' : 'Anand Raaj Anand',
      'audio' : 'assets/songs/Jhoome Jo Pathaan.mp3',
      'color' : Colors.limeAccent,
    },
    {
      'image' :  'https://www.gujaratheadline.com/wp-content/uploads/2014/12/Joganiya-Song.jpg',
      'title' : 'Joganiya',
      'subtitle' : 'Shivi',
      'audio' : 'assets/songs/Joganiya(PagalWorld.com.se).mp3',
      'color' : Colors.orangeAccent,
    },
    {
      'image' :  'http://3.bp.blogspot.com/-3A_l0mCNsMw/VilIjmjqq4I/AAAAAAAABt0/t0KBnMrl7bA/s1600/Bajirao-Mastani-%25E2%2580%2593-Deewani-Mastani.jpg',
      'title' : 'Deewani Mastani',
      'subtitle' : 'Shreya Ghoshal',
      'audio' : 'assets/songs/Deewani Mastani.mp3',
      'color' : Colors.deepOrangeAccent,
    },
    {
      'image' :  'https://static-ai.asianetnews.com/images/01ggh54nvj982xatnaja8p7z65/kantara_710x400xt.jpg',
      'title' : 'Karma Song',
      'subtitle' : 'Kantara',
      'audio' : 'assets/songs/Karma Song.mp3',
      'color' : Colors.deepOrange,
    },
  ];
}