import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Yazi.dart';
import 'main.dart';
class YemekTarif extends StatefulWidget {
  const YemekTarif({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<YemekTarif> createState() => _YemekTarifState();
}
class _YemekTarifState extends State<YemekTarif> {
  Future<bool> geridonustusu(BuildContext context)async{
    return true;
  }
  int sayac=0;
  @override
  Widget build(BuildContext context) {
    var ekranBilgi =MediaQuery.of(context);
    final ekranGenislik = ekranBilgi.size.width;
    final ekranYukseklik = ekranBilgi.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: "",)) );
        },
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenislik,

              child: Image.asset("resimler/yemek1.jpg"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenislik/8,
                    child: FlatButton(
                      onPressed: () {
                        print("Beğenildi");
                        setState(() {
                          sayac++;
                        });
                        },
                      child: yazi("Beğen",ekranGenislik/25),
                      color: Colors.orange,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenislik/8,
                    child: FlatButton(
                      onPressed: (){
                        print("Yorum Yapıldı");
                      },
                      child: Text("Yorum Yap",style: TextStyle(fontSize: ekranGenislik/25),),
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYukseklik/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",
                    style: TextStyle(
                      fontSize: ekranGenislik/20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  Row(
                    children: [
                      yazi("Izgara Üzerinde Pişirmeye Uygundur",ekranGenislik/25),
                      Spacer(),
                      yazi("8 Ağustos",ekranGenislik/25),
                    ],
                  ),
                ],
              ),
            ),
            yazi("Evde en lezzetli köfte tariflerini yapmak "
                " öncelikle malzemeleri hazırlayın. Köftelik kıymayı "
                "derince bir kaba alın. Üzerine soğanı rendeleyin."
                " Ardından ince doğranmış maydanozu ve diğer malzemeleri"
                " de ekledikten sonra güzelce yoğurun. Yoğurduğunuz "
                "harçtan parçalar alıp, avucunuzda şekillendirerek "
                "köfteleri hazırlayın. Rendelediğiniz kuru soğanı bir"
                " süzgeç yardımıyla fazla suyunu mutlaka süzün.",ekranYukseklik/30),
            Text("Beğeni:$sayac",
              style:TextStyle(
                fontSize: ekranGenislik/15,
                backgroundColor: Colors.green,
                color:Colors.deepPurple,
              ) ,
            ),
          ],
        ),
      ),

    );
  }
}