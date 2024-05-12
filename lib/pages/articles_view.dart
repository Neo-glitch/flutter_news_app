import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// would hold a web view where user can view more about an article
class ArticleView extends StatefulWidget {
  const ArticleView({super.key, required this.blogUrl});

  final String blogUrl;

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.blogUrl));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.titleLarge,
            children: const [
              TextSpan(
                text: "Flutter",
              ),
              TextSpan(
                  text: "News",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: WebViewWidget(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
