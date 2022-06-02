import 'package:flutter/material.dart';

class FBuilderPage extends StatefulWidget {
  const FBuilderPage({Key? key}) : super(key: key);

  @override
  State<FBuilderPage> createState() => _FBuilderPageState();
}

class _FBuilderPageState extends State<FBuilderPage> {
  var myMessage;

  @override
  void initState() {
    super.initState();
    delayTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: delayTime(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text((snapshot.data.toString()));
            } else if (snapshot.hasError) {
              return Text("Error !!");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> delayTime() async {
    String txt =
        await Future.delayed(const Duration(seconds: 3), () => "Hello");
    return txt;
  }

  Widget showText() {
    delayTime().then((value) {
      debugPrint(value);
      myMessage = value;
    });
    return Text(myMessage);
  }
}
