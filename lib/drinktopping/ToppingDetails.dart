import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';
import 'package:selfservicekiosk/order/overeasyorderpage.dart';
import 'package:selfservicekiosk/paymentpage/choosepaymentpage.dart';


class ToppingHotDetails extends StatefulWidget {


  @override
  _ToppingHotDetailsState createState() => _ToppingHotDetailsState();
}

class _ToppingHotDetailsState extends State<ToppingHotDetails> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.black,


      body:
      Column(
        children: <Widget>[

          Container(
          height: 30,
      ),

         Row(

           mainAxisAlignment: MainAxisAlignment.start,

           children: <Widget>[
             Text('        ', style: TextStyle(color: Colors.white,fontSize: 30),),
             Image.asset('images/PNGFile/menu 1.png', height: 200,width: 200,),

             Row(
               children: <Widget>[
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,

                   children: <Widget>[

                          Column(
                            children: <Widget>[
                              Text('           Cappucino', style: TextStyle(color: Colors.white,fontSize: 30),),
                              Text('Size', style: TextStyle(color: Colors.white,fontSize: 30),),


                            ],
                     ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         Text('                        Rp\n\n',style: TextStyle(color: Colors.white,fontSize: 10)),
                         Text('100000',style: TextStyle(color: Colors.white,fontSize: 30)),
                       ],
                     )

                   ],
                 )
               ],
             )
           ],
           
           
         )




        ],



      ),

    );

  }



}
