import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam/kullanici_verisi.dart';
import 'sonuc_sayfasi.dart';

class Veriler extends StatefulWidget {
  @override
  State<Veriler> createState() => _VerilerState();
}

class _VerilerState extends State<Veriler> {
  late String seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporGunu = 0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yaşam Kalitesi',
          style: TextStyle(color: Colors.indigo[700]),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'BOY',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            boy.toString(),
                            style: TextStyle(
                              color: Colors.lightBlue[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    boy++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    boy--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'KİLO',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            kilo.toString(),
                            style: TextStyle(
                              color: Colors.lightBlue[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Haftada kaç gün spor yapıyorsunuz?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    sporGunu.round().toString(),
                    style: TextStyle(
                      color: Colors.lightBlue[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: sporGunu,
                      onChanged: (double newValue) {
                        setState(() {
                          sporGunu = newValue;
                        });
                      }),
                ],
              ),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Günde kaç sigara içiyorsunuz?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: TextStyle(
                      color: Colors.lightBlue[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Slider(
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      }),
                ],
              ),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
            ),
          ),
          Text(
            'Cinisiyet seçiniz:',
            style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                        seciliCinsiyet = 'KADIN';
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 50,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KADIN',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                        seciliCinsiyet = 'ERKEK';

                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 50,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'ERKEK',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sonuc(KullaniciVeri(
                        kilo: kilo,
                        boy: boy,
                        seciliCinsiyet: seciliCinsiyet,
                        sporGunu: sporGunu,
                        icilenSigara: icilenSigara)),
                  ),
                );
              },
              child: Text(
                'HESAPLA',
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
    );
  }
}
