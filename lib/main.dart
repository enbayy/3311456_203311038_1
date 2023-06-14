import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:izleme/constant/Custom_divider.dart';
import 'package:izleme/constant/Popup_menu.dart';
import 'package:izleme/pages/Login_screens/LoginPage.dart';
import 'services/auth/firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leziz Yemek Tarifleri',
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        centerTitle: true,
        actions: [Popup_menu()],
        title: Text('Leziz Yemek Tarifleri'),
        elevation: 10,
        backgroundColor: Colors.amber,
        leading: Container(
          child: Image.asset('assets/resimler/logo.png'),
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            MyDivider(),

            colorizeAnimation(),

            MyDivider(),

            GestureDetector(
              child: const Text('GİRİŞ YAP', style: TextStyle(fontSize: 35,color: Colors.white),),
              onTapUp: (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Giriş Yapınız')));
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),

            MyDivider(),
          ],
        ),
      ),
    );
  }

  colorizeAnimation() {
      const colorizeColors = [
        Colors.white,
        Colors.grey,
      ];
      const colorizeTextStyle = TextStyle(
          fontSize: 50.0
      );
      return SizedBox(
          height: 100,
          width: double.infinity,
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                    'HOŞGELDİNİZ',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors)
              ],
              repeatForever: true,
            ),
          ),
        );
  }
}

