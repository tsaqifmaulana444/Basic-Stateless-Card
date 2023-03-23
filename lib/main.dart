import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    Color Color1 = Color.fromRGBO(44, 51, 51, 1.0);
    Color Color2 = Color.fromRGBO(46, 79, 79, 1.0);
    Color Color3 = Color.fromRGBO(14, 131, 136, 1.0);
    Color Color4 = Color.fromRGBO(203, 228, 222, 1.0);

    return Scaffold(
      backgroundColor: Color2,
      appBar: AppBar(
        title: Text('Latihan'),
        centerTitle: true,
        backgroundColor: Color1,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color1,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image(3).jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Color3,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Tejo Sulistyo',
              style: TextStyle(
                color: Color4,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Color4,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'mastejo@gmail.com',
                  style: TextStyle(
                    color: Color4,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
