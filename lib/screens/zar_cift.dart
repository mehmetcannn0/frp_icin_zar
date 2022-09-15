import 'package:flutter/material.dart';
import 'dart:math';

class z_cift extends StatefulWidget {
  int gzar_turu;
  z_cift(this.gzar_turu);

  @override
  _z_ciftState createState() => _z_ciftState(gzar_turu);
}

class _z_ciftState extends State<z_cift> {
  _z_ciftState(int gzar_turu);

  int zar = 0;
  int zar2 = 0;
  var zarGecmis = [];
  var zarGecmis2 = [];
  int uzunluk = 0;

  void _zar_at() {
    setState(() {
      uzunluk = zarGecmis.length;
      zar = Random().nextInt(widget.gzar_turu) + 1;

      zarGecmis.insert(0, zar);
      if (uzunluk > 9) {
        zarGecmis.removeAt(10);
      }

      //2. zar
      uzunluk = zarGecmis2.length;
      zar2 = Random().nextInt(widget.gzar_turu) + 1;

      zarGecmis2.insert(0, zar2);
      if (uzunluk > 9) {
        zarGecmis2.removeAt(10);
      }
    });

    print("$zar + " " + $zar2");
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _zar_at,
                  child: Image.asset(
                    "images/d${widget.gzar_turu}.png",
                    width: 100,
                  ),
                ),
                TextButton(
                  onPressed: _zar_at,
                  child: Image.asset(
                    "images/d${widget.gzar_turu}.png",
                    width: 100,
                  ),
                ),
              ],
            ),
            const Text(
              'Gelen sayınız:',
            ),
            Text(
              '$zar - $zar2',
              style: Theme.of(context).textTheme.headline2,
            ), //***************** */
            /******************buraya list view i deneyebılırım ******************/
            Text("Geçmiş"),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Column(
                    children: [
                      for (int item in zarGecmis)
                        (Text(
                          "$item - ",
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    ],
                  )),
                  Container(
                      child: Column(children: [
                    for (int item2 in zarGecmis2)
                      (Text(
                        "$item2",
                        style: Theme.of(context).textTheme.headline6,
                      )),
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
