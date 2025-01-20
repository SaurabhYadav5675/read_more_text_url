import 'package:flutter/material.dart';
import 'package:read_more_text_url/read_more_text_url.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read More',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Read More Text With URL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String linkText =
      "I have developed a Flutter package that offers a https://pub.dev/packages/read_more_text_url text expansion widget. This package includes advanced features such as URL and email detection, custom link styling, dynamic pattern matching, and the ability to add click actions on links. You can also check out an example here https://pub.dev/packages/read_more_text_url/example to see it in action.";
  String normalText =
      "I have developed a Flutter package that offers a Read More/Read Less text expansion widget. This package comes with several advanced features, including the ability to detect URLs and emails, custom link styling, dynamic pattern matching, and support for click actions on links.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ReadMoreText(
                  linkText,
                  trimMode: TrimMode.line,
                  trimLines: 2,
                  style: const TextStyle(fontSize: 18),
                  moreStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  lessStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  linkStyle: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                  ),
                  hyperLinkMaps: const [
                    {
                      "https://pub.dev/packages/read_more_text_url":
                          "Read More/Read Less"
                    }
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
