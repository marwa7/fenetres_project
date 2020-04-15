import 'package:flutter/material.dart';

// ignore: camel_case_types
class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff739D84),
        body:Column(children: <Widget>[
          Container(
              alignment: Alignment.topRight,
              child: SendUpImageAsset()
          )
          ,
          SizedBox(
            height: 166.0,
          ),
          Text('Un code de vérification va être',
          style: TextStyle(
            color: Color(0xffF2E9DB),
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
          ),Text('envoyer au numero suivant',
          style: TextStyle(
            color: Color(0xffF2E9DB),
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
          ),Text('----------',
          style: TextStyle(
            color: Color(0xffF2E9DB),
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
          ),
          SizedBox(
            height: 137.8,
          ),
          Stack(
            alignment: Alignment.center,
            children :<Widget>[
            Container(
             alignment: Alignment.bottomRight,
               child: SendDownImageAsset()
          ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 69.0,
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
                            'Envoyer le code',
                            style: TextStyle(
                                color: Color(0xffF1B97A),
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),


                      Container(
                        alignment: Alignment.center,
                        width: 250.0,
                        child:  Text(
                            'Annuler',
                            style: TextStyle(
                                color: Color(0xffF1B97A),
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),


                ],
              )
            ])

        ]));
  }
}

class SendUpImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('shapeup.png',);
    Image image = Image(image: assetImage , width: 411.0,fit: BoxFit.cover);
    return Container(child: image,);
  }

}class SendDownImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('shapedown.png',);
    Image image = Image(image: assetImage , height: 220.0 ,fit: BoxFit.cover, alignment: Alignment.bottomLeft,);
    return Container(child: image,);
  }
}


