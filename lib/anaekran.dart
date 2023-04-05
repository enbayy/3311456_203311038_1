import 'package:flutter/material.dart';
import 'package:izleme/Hakkinda.dart';
import 'package:izleme/Yemekler.dart';
import 'package:izleme/bugun_ne_yesem.dart';


class anaekran extends StatefulWidget {

  @override
  _anaekran createState() => _anaekran();
}

class _anaekran extends State<anaekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Leziz Yemek Tarifleri'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:[

              SizedBox(width: 40, height: 40,),

              Divider(
                thickness:2,
                height: 30,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),

              SizedBox(width: 50, height: 50,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    primary: Colors.grey.shade900,
                    minimumSize: Size(70, 70)),
                child: Text('MENÜ', style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 34)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Yemekler()));

                },
              ),

              SizedBox(width: 50, height: 50,),

              Divider(
                thickness:2,
                height: 30,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),

              SizedBox(width: 50, height: 50,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    primary: Colors.grey.shade900,
                    minimumSize: Size(70, 70)),
                child: Text('BUGÜN NE YESEM?', style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 34)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bugunneyesem()));

                },
              ),

              SizedBox(width: 50, height: 50,),

              Divider(
                thickness:2,
                height: 30,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),

              SizedBox(width: 50, height: 50,),


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    primary: Colors.grey.shade900,
                    minimumSize: Size(60, 60)),
                child: Text('HAKKINDA', style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 28)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Hakkinda()));
                },
              ),

              SizedBox(width: 50, height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
