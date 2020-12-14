import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Widget/drawer.dart';
import 'package:news_app/Widget/styles.dart';
import 'package:url_launcher/url_launcher.dart';

import 'admob.dart';
class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final Admob _admob = Admob();

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
      appId: "ca-app-pub-6981834029494339~8992183998",);
    _admob.bannerAd =_admob.createBannerAd()..load()..show();
    // super.initState();
  }

  @override
  void dispose() {
    _admob.bannerAd.dispose();
    _admob.interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = 45;
    return Scaffold(
      drawer: Dwidget(),
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: (){
                RewardedVideoAd.instance.load(adUnitId: "ca-app-pub-6981834029494339/7247857487",targetingInfo: Admob.targetingInfo);
                RewardedVideoAd.instance.show();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 13,top: 10),
                child: FaIcon(FontAwesomeIcons.ad,color: Colors.white,size: 35,),
              )),
        ],
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text("Contact Developer",),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: CircleAvatar(
                radius: 80,
                //backgroundImage: NetworkImage("https://cdn0.iconfinder.com/data/icons/bitcoin-cryptocurrency-lavender-vol-2-1/512/cypherpunk-512.png"),
                backgroundImage: AssetImage("images/dev.webp"),
              ),
            ),
            SizedBox(height: 10,),
            Text("OG_Dev",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            Text("Mobile Development (Andriod/IOS), Digital Marketer",style: GoogleFonts.ptSerif(fontWeight: FontWeight.w600 ),),
            Text("And Entrepreneur",style: GoogleFonts.ptSerif(fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text("If You Have Any Suggestion Or Project Idea You Can",style: GoogleFonts.openSans(fontWeight: FontWeight.w500),),
            SizedBox(height: 2.5,),
            Text("Contact Me Using:",style: GoogleFonts.openSans(fontWeight: FontWeight.w500),),
            SizedBox(height: MediaQuery.of(context).size.height/40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: _instgram,
                    child: FaIcon(FontAwesomeIcons.instagram,color: Colors.purple,size: size,)),
                GestureDetector(
                    onTap: _youtube,
                    child: FaIcon(FontAwesomeIcons.youtube,color: Colors.red,size: size,)),
                GestureDetector(
                    onTap: _whatsapp,
                    child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,size: size,)),
                GestureDetector(
                    onTap: _github,
                    child: FaIcon(FontAwesomeIcons.github,color: Colors.black,size: size,)),
              ],
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Instagram",style: Style.WTextStyle,),
                Text("Youtube",style: Style.WTextStyle,),
                Text("Whatsapp",style: Style.WTextStyle,),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text("Github",style: Style.WTextStyle,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
_instgram() async {
  const url = 'https://www.instagram.com/og_developer/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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
_whatsapp() async {
  const url = 'https://wa.me/message/BEQ25NC2H3CLB1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_github() async {
  const url = 'https://github.com/Ariwizzy';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


