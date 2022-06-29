import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[700],

      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(060, 0, 0, 0),
        children: <Widget>[


          Padding(
            padding:
            const EdgeInsets.fromLTRB(5,10,5,10),

            child: Material(

              borderRadius: BorderRadius.circular(15),
              color: Colors.brown[300],
             
              elevation: 0.0,
              child:
              MaterialButton(
                highlightColor: Colors.orangeAccent[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                onPressed: (

                    ) async{


                },

                //minWidth: MediaQuery.of(context).size.,
                child: Text(
                  "RECOMMENDED",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 17.0),
                ),
              ),
            ),
          ),

          Container(width: 30,),

          Padding(
            padding:
            const EdgeInsets.fromLTRB(5,10,5,10),

            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown[300],
              elevation: 0.0,
              child: MaterialButton(
                highlightColor: Colors.orangeAccent[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: () async{

                },

                //minWidth: MediaQuery.of(context).size.,
                child: Text(
                  "COFFEE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 17.0),
                ),
              ),
            ),
          ),
          Container(width: 30,),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(5,10,5,10),

            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown[300],
              elevation: 0.0,
              child: MaterialButton(
                highlightColor: Colors.orangeAccent[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: () async{

                },

                //minWidth: MediaQuery.of(context).size.,
                child: Text(
                  "BABY CHINO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 17.0),
                ),
              ),
            ),
          ),
          Container(width: 30,),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(5,10,5,10),

            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown[300],
              elevation: 0.0,
              child: MaterialButton(
                highlightColor: Colors.orangeAccent[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: () async{

                },

                //minWidth: MediaQuery.of(context).size.,
                child: Text(
                  "CREAM SERIES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 17.0),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget{

  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.orangeAccent[100],
          borderRadius: BorderRadius.circular(10.0)
        ),
        width: 127.0,
        child: ListTile(

          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.w200, color: Colors.brown[700]),),
          ),
        ),
      ),
    ),);
  }

}