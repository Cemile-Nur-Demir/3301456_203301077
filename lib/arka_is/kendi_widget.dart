import 'package:hayalll/arka_is/veri_yapisi.dart';
import 'package:flutter/cupertino.dart';
import 'package:hayalll/main.dart';

//final List veriList1 = VeriKutuTopla();
final VeriKutuTopla veriListeBilgi = VeriKutuTopla();

Widget kutuBilgi(VeriListe veriListe1) {

  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(myController.text) ,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(myController1.text),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(myController2.text),
        ),
      ],
    ),
  );
}

Widget kutuTopla() {
  return kutuBilgi(veriListeBilgi);
}
