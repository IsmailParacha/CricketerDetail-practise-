import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CriketerDetail(),
  ));
}

class CriketerDetail extends StatefulWidget {
  const CriketerDetail({Key? key}) : super(key: key);

  @override
  State<CriketerDetail> createState() => _CriketerDetailState();
}

class _CriketerDetailState extends State<CriketerDetail> {
  int matches = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    matches = 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Criceter Detail"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            "assets/images/afridi.png",
            width: 250,
            height: 250,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Divider(
              height: 30,
              color: Colors.white38,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text("Name",
                style: TextStyle(color: Colors.white38, letterSpacing: 6)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Shahid Afridi",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text("Age",
                style: TextStyle(color: Colors.white38, letterSpacing: 2.0)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "49",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text("Match's Played",
                style: TextStyle(color: Colors.white38, letterSpacing: 2.0)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "$matches",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            matches = matches + 1;
          });
        },
        backgroundColor: Colors.grey[700],
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
