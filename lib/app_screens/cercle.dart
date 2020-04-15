import 'package:flutter/material.dart';

// ignore: camel_case_types
class cercle extends StatefulWidget {
  @override
  _CercleState createState() => _CercleState();
}

class _CercleState extends State<cercle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff739D84),
        body: Column(children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
                decoration: BoxDecoration(
                color: Color(0xffF2E9DB),
                //boxShadow: [BoxShadow(
                //color: Color(0xffF2E9DB),
                //blurRadius: 20,
                //offset: Offset(0.0, 10.0)
                //)],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 62.0,
                      ),
                      Text(
                  "Rejoignez un cercle ? ",
                      style: TextStyle(
                      color: Color(0xff739D84),
                      fontSize: 25.0 ,
                      fontWeight: FontWeight.bold
                      ),
                  ),
                      SizedBox(
                  height: 17.0,
                      ),
                      Text("Veuillez entrer votre code d'invitation",
                        style: TextStyle(
                            color: Color(0xff739D84),
                            fontSize: 18.0 ,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 165.0,
                      ),
                      Text('NOTE : Vous pouvez demander le code au créateur du cercle',
                    style: TextStyle(
                    color: Color(0xff739D84),
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0
                  ),
                ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.0),
                            width: 300.0,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: () => print('button pressed'),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              color: Color(0xffF1B97A),
                              child: Text(
                                'Confirmer mon code',
                                style: TextStyle(
                                    color: Color(0xffE8652D),
                                    letterSpacing: 1.5,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
              ],
            ),
          )),
                SizedBox(
                    height: 300.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('______________________ OU ______________________',
                      style: TextStyle(
                        color:  Color(0xffF2E9DB),
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0
                      ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Text("Vous n'avez pas de code ?",
                        style: TextStyle(
                            color:  Color(0xffF2E9DB),
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0
                        ),
                      ),Text("On va vous donner un code",
                        style: TextStyle(
                            color:  Color(0xffF2E9DB),
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0
                        ),
                      ),Text("pour le partager",
                        style: TextStyle(
                            color:  Color(0xffF2E9DB),
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.0),
                            width: 300.0,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: () => print('regester button pressed'),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              color: Color(0xffE8652D),
                              child: Text(
                                'Créer mon cercle',
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
                    ],
            ),
          )
        ]));
  }
}
