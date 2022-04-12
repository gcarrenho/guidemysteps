import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset("name",
                width: MediaQuery.of(context).size.width/2,
                height: 200,
              ),
            ),
            ElevatedButton.icon(
              label: Text('Woolha.com'),
              icon: Icon(Icons.web),
              onPressed: () {
                print('Pressed');
              },
            )
          ],
        ),
      ),
    );
  }
}
