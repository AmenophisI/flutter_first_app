import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えて下さい";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: Text(
              _textHeader,
              style: TextStyle(fontSize: 13.0),
            )),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: _textEditingController,
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onClick(),
                child: Text(
                  "押して下さい",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは！$inputTextさん";
      // _imageWidget = Image.asset("assets/images/hello.png");
      _imageWidget = Image.network("https://storage.googleapis.com/cms-storage-bucket/9abb63d8732b978c7ea1.png");
    });
  }
}
