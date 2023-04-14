
import 'package:hayalll/main.dart';

final String data = myController.text;
final String data1 = myController1.text;
final String data2 = myController2.text;
//final VeriModel genel = VeriModel(data, data1, data2);


class VeriModel{
  const VeriModel(data,data1,data2);
}

class VeriListe{
  final List<VeriModel> veriList = [];
  VeriListe() {
    veriList.add(VeriModel(data, data1, data2));
  }
}

class VeriKutuTopla extends VeriListe{
  final List<VeriListe> veriTopList = [];
  void veriTopla() {
    while (veriTopList.last != null) {}
  }
}