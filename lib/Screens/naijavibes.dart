import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class NaijaVibes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(text: "NaijaVibes",
        url: "https://www.naijavibes.com/mp3-download/",
        color: const Color(0xff366f05),
    loadingColor: const Color(0xff366f05),
    );
  }
}