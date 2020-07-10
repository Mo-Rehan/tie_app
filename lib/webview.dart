import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Webview extends StatefulWidget {

  final String url;
  Webview(this.url);

  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}