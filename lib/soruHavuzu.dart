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
    Soru(
        soruText:
            "Tarihte sultan unvanını ilk kullanan hükümdar Gazneli Mahmut'tur.",
        soruCevap: true),
    Soru(
        soruText: "Fatih Sultan Mehmet'in babasının adı Yıldırım Beyazıt'tır.",
        soruCevap: false),
    Soru(soruText: "Su elementtir.", soruCevap: false),
    Soru(soruText: "-1 bir doğal sayıdır.", soruCevap: false),
  ];

  String soruTextGetir() {
    return _soruBankasi[_soruIndex].soruText;
  }

  bool soruCevapGetir() {
    return _soruBankasi[_soruIndex].soruCevap;
  }

  void sonrakiSoruGetir() {
    if (_soruIndex < _soruBankasi.length - 1) {
      _soruIndex++;
    }
  }
}
