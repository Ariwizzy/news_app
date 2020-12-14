import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class NaijaLoaded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(text: "NaijaLoaded",
        url: "https://www.naijaloaded.com.ng/download-music",
        color: const Color(0xff366f05),loadingColor: const Color(0xff366f05),
    );
  }
}