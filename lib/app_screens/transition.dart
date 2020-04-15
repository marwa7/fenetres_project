import 'package:flutter/material.dart';

// ignore: camel_case_types
class transition extends StatefulWidget {
  @override
  _TransitionState createState() => _TransitionState();
}

// ignore: camel_case_types
class _TransitionState extends State<transition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2E9DB),
        body:Stack(children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              child:
              ShapeImageAsset()
          )
          ,
          Container(
              padding: EdgeInsets.only(left: 20.0, right: 10.0),
              alignment: Alignment.topCenter,
              child: Column(

                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Text('Salut ____!\nMaintenant vous pouvez rejoindre ou créer votre cercle',
                  style: TextStyle(
                    color: Color(0xffF2E9DB),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  ImageImageAsset(),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: 250.0,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () => print('regester button pressed'),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      color: Color(0xffE8652D),
                      child: Text(
                        'Continuer',
                        style: TextStyle(
                            color: Color(0xffF1B97A),
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )


          ),



        ]));
  }
}

class ImageImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('image.png',);
    Image image = Image(image: assetImage ,  height  : 400.0, fit: BoxFit.cover);
    return Container(child: image,);
  }

}class ShapeImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('shape.png',);
    Image image = Image(image: assetImage , height: 360.0 ,width :550.0, fit: BoxFit.cover, alignment: Alignment.bottomLeft,);
    return Container(child: image,);
  }
}


