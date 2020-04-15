import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        padding: EdgeInsets.only(left: 10.0, top: 40.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[

                Expanded(child:
                Text(
                  "SPICE JET" ,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0 ,
                      color: Colors.white
                  ),
                )
                ),

                Expanded(child:
                Text(
                  "from algiers to annaba" ,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0 ,
                      color: Colors.white
                  ),
                )),
              ],
            ),

            Row(
              children: <Widget>[

                Expanded(child:
                Text(
                  "air algerie" ,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0 ,
                      color: Colors.white
                  ),
                )
                ),

                Expanded(child:
                Text(
                  "from oran to setif" ,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0 ,
                      color: Colors.white
                  ),
                )),
              ],
            ),
            Picture1ImageAsset()


          ],
        )





      )
    );



  }


}

class Picture1ImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/picture1.jpg') ;
    Image image = Image(image: assetImage) ;
    return Container( child: image,) ;
  }


}