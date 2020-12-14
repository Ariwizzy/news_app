import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class WapLoaded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(color: const Color(0xff106ecc),url: "https://music.waploaded.com/118/nigerian-latest-mp3",text: "WapLoaded",loadingColor: const Color(0xff106ecc),);
  }
}
