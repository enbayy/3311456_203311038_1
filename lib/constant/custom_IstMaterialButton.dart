import 'package:flutter/material.dart';

class Ist_Material_Button extends StatefulWidget {
  const Ist_Material_Button({Key? key, this.image, this.page,this.text, this.width, this.height}) : super(key: key);
  final image;
  final page;
  final text;
  final width;
  final height;

  @override
  State<Ist_Material_Button> createState() => _Ist_Material_ButtonState();
}

class _Ist_Material_ButtonState extends State<Ist_Material_Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.all(2.0),
        textColor: Colors.black,
        child:
        Container(
          width: widget.width,
          height: widget.height,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.black)
              ),
            ),
          ),
        ),
        // ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => widget.page));
        }
    );
  }
}