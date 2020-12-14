import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class MP3Bullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
      text: "Mp3Bullet",
      url: "https://www.mp3bullet.ng/category/download-mp3-audio/",
      color: const Color(0xff4180ef),
      loadingColor: const Color(0xff4180ef),
    );
  }
}
