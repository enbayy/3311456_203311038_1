import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';

class Animation_button extends StatefulWidget {

  @override
  _Animation_buttonState createState() => _Animation_buttonState();
}

class _Animation_buttonState extends State<Animation_button> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 34),
          minimumSize: Size(70,70),
          shape: StadiumBorder(),
          primary: Colors.grey.shade900,
          side: BorderSide(color: Colors.red, width: 4)
        ),
        child: isLoading
        ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(color: Colors.white,),
            SizedBox(width: 10,),
            Text('Lütfen Bekleyin',style: TextStyle(fontSize: 34, fontFamily: 'Satisfy'),)
          ],
        )
        : const Text('Ana Sayfaya Git', style: TextStyle(fontFamily: 'Satisfy'),),

        onPressed: () async{
          if (isLoading) return;
          setState(() => isLoading = true);
          await Future.delayed(const Duration(seconds: 2));
          setState(() => isLoading = false);
          Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
        },
      ),
    );


  }
}