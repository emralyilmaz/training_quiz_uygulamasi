import 'soru.dart';

class SoruHavuzu {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(soruText: "İtalya'nın başkenti Madrid'tir.", soruCevap: false),
    Soru(
        soruText: "Apple firmasının geliştirdiği web tarayıcı safaridir.",
        soruCevap: true),
    Soru(
        soruText: "Flutter facebook tarafından geliştiriliyor.",
        soruCevap: false),
  ];
}
