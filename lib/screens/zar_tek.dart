import 'package:flutter/material.dart';
import 'dart:math';

class z_tek extends StatefulWidget {
  int gzar_turu;
  z_tek(this.gzar_turu);
  @override
  _z_tekState createState() => _z_tekState(gzar_turu);
}

class _z_tekState extends State<z_tek> {
  _z_tekState(int gzar_turu);

  int zar = 0;
  var zarGecmis = [];
  int uzunluk = 0;

  void _zar_at() {
    setState(() {
      uzunluk = zarGecmis.length;
      zar = Random().nextInt(widget.gzar_turu) + 1;

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
        title: Text("FRP için ZAR Uygulamasi"),
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
                "images/d${widget.gzar_turu}.png",
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
