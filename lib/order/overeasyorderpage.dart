import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:selfservicekiosk/components/horizontal_list_view.dart';
import 'package:selfservicekiosk/homepage/products_grid_view.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';
import 'package:selfservicekiosk/revieworderpage/ReviewOrderPage.dart';

enum ConfirmAction { CANCEL, ACCEPT }
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Image.asset('images/icons/warning.png', width: 50, height: 50,),
        content: const Text(
            'Are You Sure Want To Cancel This Order?',style: TextStyle(fontSize: 17),textAlign: TextAlign.center,),
        actions: <Widget>[
          FlatButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.CANCEL);
            },
          ),
          FlatButton(
            child: const Text('ACCEPT'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyHomePage(),),);
            },
          )
        ],
      );
    },
  );
}


class OvereasyOrderPage extends StatefulWidget{
  @override
  _OvereasyOrderPage createState() => _OvereasyOrderPage();
  final TextEditingController _textEditingController = new TextEditingController();

}

class _OvereasyOrderPage extends State<OvereasyOrderPage>{
  @override
  Widget build (BuildContext context) {


    Widget imageCarousel = new Container(
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('images/PNGFile/banner_withtext.png'),
          AssetImage('images/PNGFile/banner_withtext.png'),

         // AssetImage('Image/rsz_ovo,jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 10.0,
        dotBgColor: Colors.transparent,
      ),
    );




    return Scaffold(

      backgroundColor: Colors.black,


      body: new ListView(
        children: <Widget>[
          imageCarousel,
          //Horizontal list view

          HorizontalListView(),


          Container(
            height: 15,
          ),


          new Padding(padding: const EdgeInsets.all(10.0),
            child: new Text('   Favourite Products', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20, color: Colors.amber),),),

          //Grid View
          Container(
            height: 670.0,
            child: Products(),
          ),


          Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.white),
          ),


          Text('   My Orders', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 35, color: Colors.white),
          ),

          Text('   1 Items | Rp. 25.000', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 35, color: Colors.white),
          ),

          Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 5, color: Colors.white),
          ),



          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              new Container(
                width: 100,
              ),
             MaterialButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyHomePage(),),);
              },

                child: Image.asset('images/icons/home_border.png',
                width: 65,
                ),


              ),

              new Container(
                width: 20,
              ),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(5,10,5,10),

                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent[100],
                  elevation: 0.0,
                  child:
                  MaterialButton(
                    onPressed: () async{
                      final ConfirmAction action = await _asyncConfirmDialog(context);
                      print("Confirm Action $action" );
                    },

                    //minWidth: MediaQuery.of(context).size.,
                    child: Text(
                      "X      CANCEL ORDER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 17.0),
                    ),
                  ),
                ),
              ),

              new Container(
                width: 40,
              ),


              Padding(
                padding:
                const EdgeInsets.fromLTRB(5,10,5,10),

                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent[100],
                  elevation: 0.0,
                  child:
                  MaterialButton(
                    onPressed: () async{

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage(),),);

                    },

                    //minWidth: MediaQuery.of(context).size.,
                    child: Text(
                      "REVIEW ORDER     ->",
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


        ],
      ),



    );
  }

}