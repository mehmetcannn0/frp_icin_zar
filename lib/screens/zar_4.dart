import 'package:flutter/material.dart';
import 'dart:math';

class zar_4 extends StatefulWidget {
  @override
  _zar_4State createState() => _zar_4State();
}

class _zar_4State extends State<zar_4> {
  var zar_turu = 4; //////

  int zar = 0;
  var zarGecmis = [];
  int uzunluk = 0;

  void _zar_at() {
    setState(() {
      uzunluk = zarGecmis.length;
      zar = Random().nextInt(zar_turu) + 1;

      zarGecmis.insert(0, zar);
      if (uzunluk > 9) {
        zarGecmis.removeAt(10);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FPR için ZAR Uygulamasi"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 65,
            ),
            TextButton(
              onPressed: _zar_at,
              child: Image.asset(
                "images/d$zar_turu.png",
                width: 100,
              ),
            ),
            const Text(
              'Gelen sayınız:',
            ),
            Text(
              '$zar',
              style: Theme.of(context).textTheme.headline2,
            ), //***************** */
            /******************buraya list view i deneyebılırım ******************/
            Text("Geçmiş"),
            for (int item in zarGecmis)
              (Text(
                "$item",
                style: Theme.of(context).textTheme.headline6,
              )),
          ],
        ),
      ),
    );
  }
}
