import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<register> {

  bool _isHidden = true ;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('signup.jpg'), fit: BoxFit.cover)),

            ///////////////////////////////////////////////////////////////////////
            //  height: double.infinity,
            // width: double.infinity,
            // decoration: BoxDecoration(
            // gradient: LinearGradient(
            // begin: Alignment.topCenter,
            // end: Alignment.bottomCenter,
            // colors: [
            //  Color(0xFF73AEF5),
            // Color(0xFF61A4F6),
            //   Color(0xFF478DE0),
            //  Color(0xFF398AE5)
            //],
            //  stops: [
            // 0.1,
            //  0.4,
            //  0.7,
            //    0.9
            //    ]),
            //),
            /////////////////////////////////////////////////////////////////
          ),

          Container(
            alignment: Alignment.center,
            height: 650.00,
            width: 382.0,
            decoration: BoxDecoration(
              color: Color(0xffF2E9DB).withAlpha(100),
              boxShadow: [BoxShadow(
                offset: Offset(24.00, 24.00),
                color: Color(0xffF2E9DB).withAlpha(40),
                blurRadius: 42,
              ),],
              borderRadius: BorderRadius.circular(50.00)
            ),
           child : Form(

            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'REBIENVENUE !',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        shadows: [
                          Shadow(
                              offset: Offset(0.00, 3.00),
                              blurRadius: 6,
                              color: Color(0xffE8652D))
                        ],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 60.0,
                        child: TextField(
                          cursorColor: Color(0xff739D84),
                          style: TextStyle(color: Color(0xff739D84)),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.sentiment_satisfied,
                              color: Color(0xff739D84),
                            ),
                            hintText: "Saisissez votre nom complet",
                            hintStyle: TextStyle(color: Color(0xff739D84)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 60.0,
                        child: TextField(
                          cursorColor: Color(0xff739D84),
                          style: TextStyle(color: Color(0xff739D84)),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff739D84),
                            ),
                            hintText: "Saisissez votre nom d'utilisateur",
                            hintStyle: TextStyle(color: Color(0xff739D84)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 60.0,
                        child: TextField(
                          cursorColor: Color(0xff739D84),
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Color(0xff739D84)),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff739D84),
                            ),
                            hintText: "Entrez votre adresse mail",
                            hintStyle: TextStyle(color: Color(0xff739D84)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 60.0,
                        child: TextField(
                          obscureText: _isHidden ,
                          cursorColor: Color(0xff739D84),
                          style: TextStyle(color: Color(0xff739D84)),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff739D84),
                            ),
                            suffixIcon:  IconButton(
                                icon: _isHidden? Icon(Icons.visibility_off ,color: Color(0xff739D84) ) : Icon(Icons.visibility , color: Color(0xff739D84)),
                                onPressed: _toggleVisibility),
                            hintText: "Créez votre mot de passe",
                            hintStyle: TextStyle(color: Color(0xff739D84)),
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Votre mot de passe doit contenir aumoin 6 caractères.",
                            style:
                                TextStyle(fontSize: 11.00, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: 250.0,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () => print('regester button pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          color: Color(0xffF1B97A),
                          child: Text(
                            'Continuer',
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
            ),
          ),
          )
        ],
      ),
    );
  }
}
