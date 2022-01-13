import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HolidayLodgesView(title: 'HolidayLodges'),
    );
  }
}

class HolidayLodgesView extends StatefulWidget {
  const HolidayLodgesView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HolidayLodgesView> createState() => _HolidayLodgesViewState();
}

class _HolidayLodgesViewState extends State<HolidayLodgesView> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: "https://holidaylodges.app",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
