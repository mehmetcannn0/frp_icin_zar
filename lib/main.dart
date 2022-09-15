import 'package:flutter/material.dart';

import 'package:sliding_switch/sliding_switch.dart';

import 'package:zar/screens/zar_cift.dart';
import 'package:zar/screens/zar_tek.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZAR Uygulamasi',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int zar = 0;
  var zarGecmis = [];
  int uzunluk = 0;
  String mesaj = "";
  bool cift = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRP için ZAR Uygulamasi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: SlidingSwitch(
                value: false,
                width: 250,
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    cift = value;
                  });
                },
                height: 55,
                animationDuration: const Duration(milliseconds: 400),
                onTap: () {},
                onDoubleTap: () {},
                onSwipe: () {},
                textOff: "Tek",
                textOn: "Çift",
                colorOn: Color.fromARGB(255, 38, 81, 173),
                colorOff: Color.fromARGB(255, 38, 81, 173),
                background: const Color(0xffe4e5eb),
                buttonColor: const Color(0xfff7f5f7),
                inactiveColor: Color.fromARGB(255, 134, 151, 168),
              ),
            ),
            Row(children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: TextButton(
                  child: Image.asset(
                    "images/d4.png",
                    width: 100,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cift ? z_cift(4) : z_tek(4)));
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: TextButton(
                  child: Image.asset(
                    "images/d6.png",
                    width: 100,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cift ? z_cift(6) : z_tek(6)));
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: TextButton(
                  child: Image.asset(
                    "images/d8.png",
                    width: 100,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cift ? z_cift(8) : z_tek(8)));
                  },
                ),
              ),
            ]),
            Row(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("4'lük zar")),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("6'lık zar")),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("8'lik zar")),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: TextButton(
                    child: Image.asset(
                      "images/d10.png",
                      width: 100,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  cift ? z_cift(10) : z_tek(10)));
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: TextButton(
                    child: Image.asset(
                      "images/d12.png",
                      width: 100,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  cift ? z_cift(12) : z_tek(12)));
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: TextButton(
                    child: Image.asset(
                      "images/d20.png",
                      width: 100,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  cift ? z_cift(20) : z_tek(20)));
                    },
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("10'luk zar")),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("12'lik zar")),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Center(child: Text("20'lik zar")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
