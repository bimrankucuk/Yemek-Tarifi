import 'package:flutter/material.dart';
import 'package:geneluygulama/YemekTarif.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Yemek'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYukseklik=ekranBilgisi.size.height;
    final ekranGenislik=ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.only(bottom: ekranYukseklik/20),
                child: SizedBox(
                    width: ekranGenislik/4,
                    child: Image.asset("resimler/ev.png")),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranGenislik/30),
                child: SizedBox(
                  width: ekranGenislik/1.2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranGenislik/30),
                child: SizedBox(
                  width: ekranGenislik/1.2,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ekranGenislik/3,
                child: RaisedButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text("GİRİŞ YAP"),
                  onPressed: (){
                    print("Giris Yapildi");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>YemekTarif(title: 'Yemek Tarifi ',)));
                  },
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("yardım seçildi");
                },
                child: Text("Yardım ?",
                  style:TextStyle(
                    color:Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenislik/25,
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
