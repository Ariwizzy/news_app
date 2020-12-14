import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class Novice2Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
      color: const Color(0xff151515),
      url: "https://novice2star.com/category/music/",
      text: "Novice2Star",
      loadingColor: const Color(0xff151515),
    );
  }
}
