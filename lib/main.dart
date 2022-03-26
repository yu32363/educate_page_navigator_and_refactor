import 'package:flutter/material.dart';
import 'package:session_2/second_page.dart';
import 'package:session_2/widgets/text_button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonWidget(
              controller: textController1,
              buttonLabel: 'Go to 2nd page',
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(textFromPage1: textController1.text),
                  ),
                );
                textController1.clear();
              },
            ),
            TextButtonWidget(
              controller: textController2,
              buttonLabel: 'Go to 3rd page',
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(textFromPage1: textController1.text),
                  ),
                );
                textController2.clear();
              },
            ),
            TextButtonWidget(
              controller: textController3,
              buttonLabel: 'Go to 4th page',
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(textFromPage1: textController1.text),
                  ),
                );
                textController3.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
