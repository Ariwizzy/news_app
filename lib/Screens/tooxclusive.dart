import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class Tooxclusive extends StatefulWidget {
  @override
  _TooxclusiveState createState() => _TooxclusiveState();
}

class _TooxclusiveState extends State<Tooxclusive> {


  @override
  Widget build(BuildContext context) {

    return WebViewClass(
      text: "Tooxclusive",
      url: "https://tooxclusive.com/main/download-mp3/https://tooxclusive.com/main/download-mp3/",
      color: const Color(0xff3e96ef),
      loadingColor:  const Color(0xff3e96ef),
    );
  }
}
