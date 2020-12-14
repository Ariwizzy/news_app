import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/36ng.dart';
import 'package:news_app/Screens/contact.dart';
import 'package:news_app/Screens/mp3bullet.dart';
import 'package:news_app/Screens/naijaloaded.dart';
import 'package:news_app/Screens/naijavibes.dart';
import 'package:news_app/Screens/notjustok.dart';
import 'package:news_app/Screens/novice2star.dart';
import 'package:news_app/Screens/tooxclusive.dart';
import 'package:news_app/Screens/wap_loaded.dart';
import 'package:url_launcher/url_launcher.dart';
class Dwidget extends StatelessWidget {
  Container listCon(String _text, IconData _icon, Function _tap) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 31,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          child: ListTile(
            onTap: _tap,
            title: Text(
              _text,
              style: TextStyle(color: Colors.grey[600]),
            ),
            leading: Icon(
              _icon,
              color: Colors.blue[800],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Image.asset("images/imgpro.jpg"),
            //Image.network("https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/NS-WKMAG0730-1595944356.jpg"),
            listCon("NaijaLoaded", Icons.music_note_sharp, () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NaijaLoaded(),
                ),
              );
            }),
            listCon("Tooxclusive", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Tooxclusive(),
                ),
              );
            }),
            listCon("NaijaVibes", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => NaijaVibes(),
                ),
              );
            }),
            listCon("36NG", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => NgMusic(),
                ),
              );
            }),
            listCon("WapLoaded", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => WapLoaded(),
                ),
              );
            }),
            listCon("NotJustOk", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => NotJustOk(),
                ),
              );
            }),
            listCon("MP3Bullet", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MP3Bullet(),
                ),
              );
            }),
            listCon("Novice2Star", Icons.music_note_sharp, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Novice2Star(),
                ),
              );
            }),
            listCon("Contact Developer", Icons.perm_contact_calendar, () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Contact(),
                ),
              );
            }),
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width /4,top: MediaQuery.of(context).size.height /99,),
              child: GestureDetector(
                  onTap: _youtube,
                  child: Text("OG Dev",style:  GoogleFonts.italiana(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey[900]),)),
            ),
          ],
        ),
      ),
    );
  }
}
_youtube() async {
  const url = 'https://www.youtube.com/channel/UCcHmauIeFjQZGw5ZGRn2f8g';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}