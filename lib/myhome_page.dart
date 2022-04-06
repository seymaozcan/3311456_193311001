import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hakkinda.dart';
import 'verisayfasi.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';
  String ogrNo = '';

  void kontrol(){
    if((adSoyad.length>6)&&(ogrNo.length==9)){
      var data=[];
      data.add(adSoyad);
      data.add(ogrNo);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:(context)=> Veriler(),
          settings: RouteSettings(
            arguments: data,
          ),
        ),
      );
    }else{
      Navigator.pushNamed(context, '/hata');
    }
  }

  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  void _ogrNoKaydet(String text) {
    setState(() {
      ogrNo = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool butonPasif=true;
    if((adSoyad.length>6)&&(ogrNo.length==9)){
      butonPasif=false;
    }else{
      butonPasif=true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yaşam Kalitesi',
          style: TextStyle(color: Colors.indigo[700]),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset('assets/yasam.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hoşgeldiniz',
                        style: TextStyle(
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue[300]),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Adınız ve Soyadınız:',
                        style: TextStyle(
                            color: Colors.indigo[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Adınızı ve Soyadınızı giriniz',
                              ),
                              keyboardType: TextInputType.text,
                              inputFormatters: [
                                FilteringTextInputFormatter.singleLineFormatter
                              ],
                              onChanged: (text) {
                                _adSoyadKaydet(text);
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Öğrenci Numaranız:',
                        style: TextStyle(
                            color: Colors.indigo[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            child: TextFormField(
                              maxLength: 9,
                              decoration: const InputDecoration(
                                hintText: 'Öğrenci numaranızı giriniz',
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (text) {
                                _ogrNoKaydet(text);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue[300]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: butonPasif ? null : kontrol,
                  child: Text('Başla'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hakkinda()),
                    );
                  },
                  child: Text(
                    'HAKKINDA',
                    style: TextStyle(
                      color: Colors.indigo[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
