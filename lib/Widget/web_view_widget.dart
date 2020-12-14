import 'dart:async';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/Screens/admob.dart';
import 'package:news_app/Widget/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  final String text,url;
  final Color color,loadingColor;
  WebViewClass({this.text,this.url,this.color,this.loadingColor});
  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  Future<bool> _willPopCallback() async {
    WebViewController webViewController = await _controller.future;
    bool canNavigate = await webViewController.canGoBack();
    if (canNavigate) {
      webViewController.goBack();
      return false;
    } else {
      return true;
    }
  }
  bool isLoading=true;
  final Admob _admob = Admob();

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
      appId: "ca-app-pub-6981834029494339~8992183998",);
    _admob.bannerAd =_admob.createBannerAd()..load()..show();
    _admob.interstitialAd = _admob.createInterstitialAd()..load()..show();
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
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
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
          backgroundColor: widget.color,
          title: Text(widget.text),
        ),
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap back again to Exit'),
          ),
          child: Stack(
            children: [
              WebView(
                javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: widget.url,
                  onPageFinished: (finish){
                    setState(() {
                      isLoading = false;
                    });
                  },
                  onWebViewCreated: (WebViewController webViewController) {
                    _controller.complete(webViewController);}

                  ),
              isLoading ? Center( child: SpinKitFadingCircle(
                color: widget.loadingColor,
                size: 50.0,
              ),)
                  : Stack(),
            ],
          ),
        ),
      ),
    );
  }
}
