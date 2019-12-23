
import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override

  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
 bool _isChecked = false;
 Color _color;
 Image _image;
 void change(bool value){
   setState(() {
    _isChecked = value;
    if(_isChecked){
      _color = Colors.orange;
      _image = Image.network("https://www.somagnews.com/wp-content/uploads/2019/11/c1-10-e1574192921291.jpg");
    } else{
       _color = Colors.orange;
      _image = Image.network("https://i.pinimg.com/originals/80/b2/33/80b233973eb62e87e554201c15f79d8a.jpg");
    }
   });
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: Text("Check Box"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
          child: Checkbox(
            value: _isChecked,
            onChanged: (bool value){
              change(value);
            },
          ),
        ),
        Container(
          child: _image,
        )
            ],
          ),
        )
      ),
    );
  }
}