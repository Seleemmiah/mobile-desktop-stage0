import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final String githubRepo =
      'https://github.com/Seleemmiah/mobile-desktop-stage0';
  final String hngHirePage = 'https://hng.tech/hire/flutter-developers';

  Future<void> _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stage 0 Task')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _launchURL(githubRepo),
              child: Text('View GitHub Repository'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL(hngHirePage),
              child: Text('Visit HNG Hire Page'),
            ),
          ],
        ),
      ),
    );
  }
}
