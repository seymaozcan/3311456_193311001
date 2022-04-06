import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yasam/kullanici_verisi.dart';
import 'hesap.dart';

class Sonuc extends StatelessWidget {
  final KullaniciVeri _kullaniciVeri;

  Sonuc(this._kullaniciVeri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç Sayfası'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Cinsiyet:',style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 20),),
              Expanded(
                child: Text(
                  _kullaniciVeri.seciliCinsiyet,
                  style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20),
                ),
              ),
              Text('İçilen Sigara:',style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 20),),
              Expanded(
                child: Text(
                  _kullaniciVeri.icilenSigara.round().toString(),
                  style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20),
                ),
              ),
              Text('Spor günü:',style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 20),),
              Expanded(
                child: Text(
                  _kullaniciVeri.sporGunu.round().toString(),
                  style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20),
                ),
              ),
              Text('Kilo:',style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 20),),
              Expanded(
                child: Text(
                  _kullaniciVeri.kilo.round().toString(),
                  style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20),
                ),
              ),
              Text('Boy:',style: TextStyle(
                  color: Colors.indigo[700],
                  fontSize: 20),),
              Expanded(
                child: Text(
                  _kullaniciVeri.boy.round().toString(),
                  style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20),
                ),
              ),
             /*
             Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    Hesap(_kullaniciVeri).hesaplama().round().toString(),
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              */
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'GERİ DÖN',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
