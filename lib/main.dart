import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Screens/naijaloaded.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        //imageBackground: NetworkImage("https://bit.ly/3qMuS8M"),
          seconds: 5,
          navigateAfterSeconds: NaijaLoaded(),
          title: new Text('Download Unlimited Music For Free',style:  GoogleFonts.ptSerif(fontWeight: FontWeight.w600,color: Colors.grey[300],fontSize: 18),),
          image: new Image.asset("images/music.jpeg"),
          loadingText: Text("OG Dev",style:  GoogleFonts.italiana(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey[300]),),
          backgroundColor: Color(0xFF064928),
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Color(0xFF4bba5b)
      ),
    );
  }
}


