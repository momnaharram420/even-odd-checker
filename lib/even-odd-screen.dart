import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class EvenOddChecker extends StatefulWidget {
  @override
  _EvenOddCheckerState createState() => _EvenOddCheckerState();
}

class _EvenOddCheckerState extends State<EvenOddChecker> {
  TextEditingController _controller = TextEditingController();
  String _result = '';
  Color _resultColor = Colors.black;

  void _checkEvenOdd() {
    setState(() {
      int number = int.tryParse(_controller.text) ?? 0;
      if (number % 2 == 0) {
        _result = '$number is Even';
        _resultColor = Colors.green;  // Green for even
      } else {
        _result = '$number is Odd';
        _resultColor = Colors.red;  // Red for odd
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Even or Odd Checker', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFF72C5B),  // Replacing deepPurple with #F72C5B
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF72C5B), width: 2.0),  // Replacing deepPurple with #F72C5B
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkEvenOdd,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF72C5B),  // Replacing deepPurple with #F72C5B
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: Text('Check', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: _resultColor),
            ),
          ],
        ),
      ),
    );
  }
}
