import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
final controller = WebViewController()
..setJavaScriptMode(JavaScriptMode.unrestricted)
..loadRequest(Uri.parse("https://github.com/MurimiCaroline"));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller) ,
    );
  }
}