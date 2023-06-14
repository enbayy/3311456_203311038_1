import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Sikayet_Oneri extends StatefulWidget {
  const Sikayet_Oneri({Key? key}) : super(key: key);

  @override
  _Sikayet_OneriState createState() => _Sikayet_OneriState();
}

class _Sikayet_OneriState extends State<Sikayet_Oneri> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  yaziekle() {
    FirebaseFirestore.instance
        .collection("Yazılar")
        .doc(t1.text)
        .set({'baslik': t1.text, 'icerik': t2.text}).whenComplete(
            () => print('Yazı Eklendi'));
  }

  yaziguncelle() {
    FirebaseFirestore.instance
        .collection("Yazılar")
        .doc(t1.text)
        .update({'baslik': t1.text, 'icerik': t2.text}).whenComplete(
            () => print('Yazı Güncellendi'));
  }

  yazisilme() {
    FirebaseFirestore.instance.collection("Yazılar").doc(t1.text).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Şikayet ve Öneriler'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade500,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: const InputDecoration(
              hintText: 'Şikayet & Öneri',
            ),
              controller: t1,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Bizimle İletişime Geçin!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),

            const SizedBox(height: 20.0),

            TextField(
              controller: t2,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Metin Giriniz',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            MaterialButton(
              onPressed: () {
                yaziekle();
              },
              minWidth: MediaQuery.of(context).size.width / 2,
              elevation: 4,
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Text(
                  'Gönder',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                yaziguncelle();
              },
              minWidth: MediaQuery.of(context).size.width / 2,
              elevation: 4,
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Text(
                  'Güncelle',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                yazisilme();
              },
              minWidth: MediaQuery.of(context).size.width / 2,
              elevation: 4,
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Text(
                  'Sil',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}