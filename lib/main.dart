import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hayalll/arka_is/kendi_widget.dart';
//import 'package:hayal/veri_yapisi.dart';

void main() => runApp( MyApp());


String? konuIsmi ;
String? konuDetay ;
String? ihtiyac;
int? ark_araniyor;
int? ark_araniyor_sayac ;
String? text1;
String? text2;
String? text3;

final myController = TextEditingController(text: konuIsmi);
final myController1 = TextEditingController(text: konuDetay);
final myController2 = TextEditingController(text: ihtiyac);



class MyApp extends StatelessWidget {
  MyApp({super.key});
  static const String _title = 'Flutter Code Sample';


/*
  void setState(callback() controller.animate(2);) {

    text1 = konuIsmi;
    text2 = konuDetay;
    text3 = ihtiyac;
    ProductPurchase(callback:(){
      controller.animateTo(2);
    },);
  }
*/

  /*
  void setText() {
    setState(() {
      text1 = konuIsmi;
      text2 = konuDetay;
      text3 = ihtiyac;
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }


}




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});



  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;


  get veriKutuTopla => null;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.tealAccent,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.workspace_premium),
              text: "Hayaller",
            ),
            Tab(
              icon: Icon(Icons.groups),
              text: "Ekip Arkadaşı Aranıyor",
            ),
            Tab(
              icon: Icon(Icons.add_circle),
              text: "Hayal Oluştur",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  <Widget>[
          Column(
            children: <Widget>[
              kutuTopla(),
            ],
          ),
          Column( children: const <Widget>  [
            Text("yapım aşamasında"),
          ]),
          Column(
              children: <Widget>  [

                Padding(padding: const EdgeInsets.all(5.0)),
                Text("Konu Başlığı?"),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Container(
                    width: 350,
                    height: 100,
                    child: TextFormField(
                      controller: myController,
                      maxLines: 20,
                      maxLength: 100,

                      decoration: const InputDecoration(
                        fillColor: Colors.white, filled:true,
                        border:OutlineInputBorder(),

                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      onChanged: (text1) {
                        konuIsmi = text1;
                      },
                    ),


                  ),
                ),
                Text("Ne yapmak istiyorsunuz?"),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Container(
                    width: 350,
                    height: 150,
                    child: TextFormField(
                      maxLines: 20,
                      maxLength: 100,
                      controller: myController1,
                      decoration: const InputDecoration(
                        fillColor: Colors.white, filled:true,
                        border:OutlineInputBorder(),

                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      onChanged: (text2) {
                        konuDetay = text2;
                      },
                    ),


                  ),
                ),
                Padding(padding: const EdgeInsets.all(10.0)),
                Text("Nelere ihtiyacın var?"),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Container(
                    width: 350,
                    height: 150,
                    child: TextFormField(
                      maxLines: 20,
                      maxLength: 100,
                      controller: myController2,
                      decoration: const InputDecoration(
                        fillColor: Colors.white, filled:true,
                        border:OutlineInputBorder(),

                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      onChanged: (text3) {
                        print("bir şeye $text3");
                        ihtiyac = text3;
                      },
                    ),

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.yellow, onPrimary: Colors.black),
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: Text('Oluştur'),
                  ),
                )
              ]
          )

        ],
      ),
    );
  }
}
