import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class NotJustOk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(color: const Color(0xff2d3243),url: "https://notjustok.com/category/song/",text: "NotJustOk",loadingColor: const Color(0xff2d3243),);
  }
}
