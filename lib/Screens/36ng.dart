import 'package:flutter/material.dart';
import 'package:news_app/Widget/web_view_widget.dart';
class NgMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewClass(url: "https://www.36ng.ng/music/",text: "36Ng",color: const Color(0xfffd0002),loadingColor: const Color(0xfffd0002),);
  }
}
