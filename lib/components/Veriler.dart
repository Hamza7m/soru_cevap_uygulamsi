// ignore_for_file: camel_case_types

import './Soru.dart';

class veri {
  int _index = 0;
  List<Soru> _data = [
    Soru(soruMetin: 'Titanic gelmiş geçmiş en büyük gemidir', yanit: false),
    Soru(
        soruMetin: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        yanit: true),
    Soru(soruMetin: 'Kelebeklerin ömrü bir gündür', yanit: false),
    Soru(soruMetin: 'Dünya düzdür', yanit: false),
    Soru(soruMetin: 'Kaju fıstığı aslında bir meyvenin sapıdır', yanit: true),
    Soru(soruMetin: 'Fatih Sultan Mehmet hiç patates yememiştir', yanit: true),
    Soru(soruMetin: 'Fransızlar 80 demek için, 4 - 20 der', yanit: true),
  ];

  String getMetin(int index) {
    return _data[index].soruMetin;
  }

  bool getYanit(int index) {
    return _data[index].yanit;
  }

  void sonrakiSoru() {
    if (_index + 1 < _data.length) {
      _index++;
    }
  }
}
