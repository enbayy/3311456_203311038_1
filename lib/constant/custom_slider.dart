import 'package:flutter/material.dart';

class mySlider extends StatefulWidget {

  @override
  State<mySlider> createState() => _mySliderState();
}

class _mySliderState extends State<mySlider> {
  double slider_ayva = 40;
  @override
  Widget build(BuildContext context) {
    return Slider(value: slider_ayva, onChanged: (yeniDeger){

      setState(() {
        slider_ayva=yeniDeger;
      });
    },
      min: 40,max: 240, divisions: 20, label: slider_ayva.toString(),);
  }
}
