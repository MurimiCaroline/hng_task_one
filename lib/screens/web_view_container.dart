import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/MurimiCaroline'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        : Scaffold(
        appBar: AppBar(
          title: const Text('My Github'),
        ),
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}