import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(7, 127, 73, 1),
          title: Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset("assets/starbuck.png"),
                  width: 48,
                ),
                Text(
                  'Good morning, Alice',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              new CustomRow(
                "Coffee thơm ngon",
                "cappuccino",
                "10%",
              ),
              new CustomRow(
                "Bánh cake ngon ngọt",
                "cookie",
                "30%",
              ),
              new CustomRow(
                "Cốc Muffin nóng hổi",
                "muffin",
                "30%",
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // child: Text("bottom"),
          backgroundColor: Color.fromRGBO(7, 127, 73, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email, color: Colors.white),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment,
                color: Colors.white,
              ),
              title: Text(""),
            )
          ],
        ),
      ),
    );
  }
}

class TextCircle extends StatelessWidget {
  TextCircle(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white70),
      padding: EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Color.fromARGB(255, 30, 55, 51)),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        padding: EdgeInsets.all(18),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final String foodLabel;
  final String imageName;
  final String percentageLabel;

  CustomRow(this.foodLabel, this.imageName, this.percentageLabel);

  @override
  Widget build(BuildContext context) {
    var imageLink = "assets/" + this.imageName + ".jpg";
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(212, 233, 227, 1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: Colors.black54)],
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        // runSpacing: 20,
        spacing: 40,
        children: <Widget>[
          SizedBox(
            child: Text(
              this.foodLabel,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            width: 250,
            height: 40,
          ),
          TextCircle(percentageLabel),
          SizedBox(
            child: Image.asset(imageLink),
            width: 100,
          ),
          RaisedButton(
            onPressed: () => print("1"),
            child: Text("Learn more"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Color.fromRGBO(7, 127, 73, 1)),
            ),
            color: Color.fromRGBO(7, 127, 73, 1),
            textColor: Colors.white,
            splashColor: Color.fromRGBO(7, 127, 73, 1),
          ),
        ],
      ),
    );
  }
}
