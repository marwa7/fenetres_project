import 'package:flutter/material.dart';

// ignore: camel_case_types
class chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

// ignore: camel_case_types
class _ChatState extends State<chat> {
  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color:  Color(0xffF2E9DB),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25.0,
              color: Color(0xff739D84),
              onPressed: () {}),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration.collapsed(
              hintText: 'Envoyer un message...',
            ),
            onChanged: (value) {},
          )),
          IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Color(0xff739D84),
              onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff739D84),
        appBar: AppBar(
          backgroundColor: Color(0xff739D84),
          title: Row(
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              GroupeImageAsset(),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Nom de groupe',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffF2E9DB),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF2E9DB),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
            )),
            _buildMessageComposer()
          ],
        ));
  }
}

class GroupeImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(
      'groupe.png',
    );
    Image image = Image(image: assetImage, width: 40.0, fit: BoxFit.cover);
    return Container(
      child: image,
    );
  }
}
