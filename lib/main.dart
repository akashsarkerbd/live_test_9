import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedSize = '';
  Color buttonColor = Colors.blue;

  void changeButtonColorAndShowSnackbar(String size) {
    setState(() {
      selectedSize = size;
      buttonColor = Colors.green;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Size'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => changeButtonColorAndShowSnackbar('S'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    child: Text('S'),
                  ),
                  ElevatedButton(
                    onPressed: () => changeButtonColorAndShowSnackbar('M'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    child: Text('M'),
                  ),
                  ElevatedButton(
                    onPressed: () => changeButtonColorAndShowSnackbar('L'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    child: Text('L'),
                  ),
                  ElevatedButton(
                    onPressed: () => changeButtonColorAndShowSnackbar('XL'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    child: Text('XL'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () => changeButtonColorAndShowSnackbar('XXL'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(buttonColor),
                  ),
                  child: Text('XXL'),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColorAndShowSnackbar('XXXL'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(buttonColor),
                  ),
                  child: Text('XXXL'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
