import 'package:flutter/material.dart';
import 'package:read_more_text_url/read_more_text.dart';

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
  String dataLink =
      "As a plugin package contains code for several platforms  https://docs.flutter.dev/packages-and-plugins/developing-packages written in several programming https://docs.flutter.dev languages, some specific steps are needed to ensure a smooth experience.lets cross third to to test trim.";
  String dataNormal =
      "As a plugin package contains code for several platforms written in several programming languages, some specific steps are needed to ensure a smooth experience.lets cross third to to test trim.As a plugin package contains code for several platforms written in several programming languages.";

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
                  dataLink,
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  moreStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  lessStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  linkStyle: const TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ))),
          ],
        ));
  }
}
