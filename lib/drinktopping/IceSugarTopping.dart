import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:selfservicekiosk/revieworderpage/ReviewOrderPage.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';
import 'package:selfservicekiosk/drinktopping/ToppingDetails.dart';


class IceAndSugarDrinkTopping extends StatefulWidget {

  @override
  _IceAndSugarDrinkToppingState createState() => _IceAndSugarDrinkToppingState();
}

class _IceAndSugarDrinkToppingState extends State<IceAndSugarDrinkTopping> {


  Widget imageCarousel = new Container(
    height: 150.0,
    child: new Carousel(
      boxFit: BoxFit.fill,
      images: [
        AssetImage('images/PNGFile/tab bar_overeazy.png'),
      ],

      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 0.0,
      dotColor: Colors.transparent,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.transparent,
    ),
  );



  @override
  Widget build(BuildContext context) {



    return Scaffold(

      backgroundColor: Colors.black,

      body: new ListView(
        children: <Widget>[

         imageCarousel,

          Container(
            height:250.0,
            child: ToppingHotDetails(),
          ),


          Column(
            children: <Widget>[

              new Text(
                'Select Sugar & Ice level\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.orangeAccent[100], fontSize: 30),),


              new Text(
                'ICE\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20),),


              Container(height: 17,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[


                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ice_no.png',height: 140,width: 70,) ,


                ),
                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ice_less.png',height: 140,width: 70,) ,


                ),

                Container(width: 20,),



                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ice_normal.png',height:140,width: 70,) ,),

                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ice_more.png',height: 140,width: 70,) ,


                ),


              ],),
              Container(height: 25,),
              Text('     No Ice             Less Ice            Normal         More Ice', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.white),
              ),

              Container(height: 25,),

              new Text(
                '\nSUGAR\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20),),

              Container(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/sugar_no.png',height: 140,width: 70,) ,


                ),
                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/sugar_less.png',height: 140,width: 70,) ,


                ),

                Container(width: 20,),



                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/sugar_normal.png',height:140,width: 70,) ,),

                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new ReviewOrderPage()));


                },color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/sugar_more.png',height: 140,width: 70,) ,


                ),
              ],

              ),

              Container(height: 25,),
              Text('  No Sugar        Less Sugar         Normal         More Sugar', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.white),
              ),





              Container(height: 20,),


            ],
          ),


          Container(height: 50,),

          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              new Container(
                width: 80,
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
