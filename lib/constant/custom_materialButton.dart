import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({Key? key, this.image, this.text, this.page}) : super(key: key);
  final image;
  final text;
  final page;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      child: Container(
        width: 600,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.red , borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding:const  EdgeInsets.all(19.0),
          child: Text(text, textAlign: TextAlign.center, style:const TextStyle(fontSize: 38), ),

        ),
      ),
      // ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
