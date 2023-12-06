// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:soru_cevap_uygulamsi/components/cevap.dart';
import './components/Veriler.dart';

void main() {
  runApp(const benimUygulama());
}

class benimUygulama extends StatefulWidget {
  const benimUygulama({super.key});

  @override
  State<benimUygulama> createState() => _benimUygulamaState();
}

class _benimUygulamaState extends State<benimUygulama> {
  List<Widget> ekleme = [];

  List<bool> Cevaplar = [false, true, false, false, true, true, true];
  int index = 0;
  veri sorular = veri();

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Benim Uygulama "),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                width: 400,
                height: 600,
                child: Center(
                  child: Column(children: [
                    Text(
                      "Soru ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(sorular.getMetin(index)),
                    SizedBox(
                      height: 100,
                    ),
                    Wrap(spacing: 20, runSpacing: 20, children: ekleme),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.thumb_down,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  sorular.sonrakiSoru();
                                  sorular.getYanit(index) == false
                                      ? ekleme.add(Answer1)
                                      : ekleme.add(Answer2);
                                });
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  sorular.sonrakiSoru();
                                  sorular.getYanit(index) == true
                                      ? ekleme.add(Answer1)
                                      : ekleme.add(Answer2);
                                });
                              }),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            )));
  }
}
