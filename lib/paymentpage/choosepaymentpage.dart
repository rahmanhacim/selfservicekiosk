import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:selfservicekiosk/revieworderpage/ReviewOrderPage.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';



//Alert OVO
enum ConfirmActionOvo { OVO }
Future<ConfirmActionOvo> _asyncConfirmDialogOvo(BuildContext context) async {
  return showDialog<ConfirmActionOvo>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {


      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[

              new
              Text('PAYMENT\n\n'
                  'Please scan OVO QR at screen shown here\n', textAlign: TextAlign.center,style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                Image.asset('images/icons/qr_ovo.png', width: 550, height: 200,),



                Container(width: 20,),


              ],),
              Container(height: 20,),
              Text('How to pay :\n\n'
                  '1. Buka Aplikasi OVO di HP anda\n'
                  '2. Buka Halaman QR code ID\n'
                  '3. Arahkan QR Code ID anda ke scanner\n'
                  '4. Periksa kembali detail pembayaran anda \n    di aplikasi OVO dan tekan "PAY"\n'
                  '5. Transksi anda selesai\n  ', style: TextStyle(fontSize: 28),),
              Container(height: 20,),
              Text('Harap lakukan pembayaran sebelum ', textAlign: TextAlign.center,style: TextStyle(fontSize: 15),
              ),
              Container(height: 50,),

            ]

        ),

      );
    },
  );
}

//ALERT GOPAY
enum ConfirmActionGopay { GO_PAY }
Future<ConfirmActionGopay> _asyncConfirmDialogGopay(BuildContext context) async {
  return showDialog<ConfirmActionGopay>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {


      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[

              new
              Text('PAYMENT\n\n'
                  'Please scan GO-PAY QR at screen shown here\n', textAlign: TextAlign.center,style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                Image.asset('images/icons/qr_gopay.png', width: 550, height: 200,),



                Container(width: 20,),


              ],),
              Container(height: 20,),
              Text('How to pay :\n\n'
                  '1. Buka Aplikasi GO-JEK di HP anda\n'
                  '2. Clik "PAY" ada kolom GO-PAY\n'
                  '3. Arahkan QR Code ID anda ke scanner\n'
                  '4. Periksa kembali detail pembayaran anda \n    di aplikasi GO-JEK \n'
                  '5. Transksi anda selesai\n  ', style: TextStyle(fontSize: 28),),
              Container(height: 20,),
              Text('Harap lakukan pembayaran sebelum ', textAlign: TextAlign.center,style: TextStyle(fontSize: 15),
              ),
              Container(height: 50,),

            ]

        ),

      );
    },
  );
}


//ALERT Card Payment
enum ConfirmActionCardPayment { GO_PAY }
Future<ConfirmActionCardPayment> _asyncConfirmDialogCardPayment(BuildContext context) async {
  return showDialog<ConfirmActionCardPayment>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {

      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[

              new
              Text('PAY WITH CARD\n\n'
                  'Please follow the payment instruction\n displayed on the pinpad below\n', textAlign: TextAlign.center,style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
               Image.asset('images/icons/pay_card.png', width: 550, height: 200,),



                Container(width: 20,),


              ],),


              Container(height: 20,),
              Text('Harap lakukan pembayaran sebelum ', textAlign: TextAlign.center,style: TextStyle(fontSize: 15),
              ),
              Container(height: 50,),

            ]

        ),

      );

    },
  );
}


//ALERT LINK_AJA
enum ConfirmActionLinkaja { GO_PAY }
Future<ConfirmActionLinkaja> _asyncConfirmDialogLinkaja(BuildContext context) async {
  return showDialog<ConfirmActionLinkaja>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {


      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[

              new
              Text('PAYMENT\n\n'
                  'Please scan LinkAja QR at screen shown here\n', textAlign: TextAlign.center,style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                Image.asset('images/icons/qr_linkaja.png', width: 550, height: 200,),



                Container(width: 20,),


              ],),
              Container(height: 20,),
              Text('How to pay :\n\n'
                  '1. Buka Aplikasi LinkAja di HP anda\n'
                  '2. Buka Halaman QR code ID\n'
                  '3. Arahkan QR Code ID anda ke scanner\n'
                  '4. Periksa kembali detail pembayaran anda \n    di aplikasi LinkAja dan tekan "PAY"\n'
                  '5. Transksi anda selesai\n  ', style: TextStyle(fontSize: 28),),
              Container(height: 20,),
              Text('Harap lakukan pembayaran sebelum ', textAlign: TextAlign.center,style: TextStyle(fontSize: 15),
              ),
              Container(height: 50,),

            ]

        ),

      );

    },
  );
}



//Alert Type of E-money
enum ConfirmAction { GO_PAY, OVO, LINK_AJA }
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[

              new Text(
                  '\n SELECT E-WALLET\n',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                new MaterialButton(onPressed: ()async{
                  final ConfirmActionGopay action = await _asyncConfirmDialogGopay(context);
                  print("Confirm Action $action" );
                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ewallet_gopay.png',height: 140,width: 100,) ,


                ),
                Container(width: 20,),

                new MaterialButton(onPressed: ()async{
                  final ConfirmActionLinkaja action = await _asyncConfirmDialogLinkaja(context);
                  print("Confirm Action $action" );
                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ewallet_linkaja.png',height: 140,width: 100,) ,


                ),

                Container(width: 20,),



                new MaterialButton(onPressed: ()async{
                  final ConfirmActionOvo action = await _asyncConfirmDialogOvo(context);
                  print("Confirm Action $action" );
                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/ewallet_ovo.png',height:140,width: 100,) ,),


                  ],),


              Container(height: 20,),
              Text('GO-PAY        LinkAja         OVO',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25, color: Colors.black),
              ),

              Container(height: 50,),

            ]

        ),


      );
    },
  );
}

//Payment status alert
enum ConfirmActionPaymentStatus { DISMISS }
Future<ConfirmActionPaymentStatus> _asyncConfirmDialogPaymentStatus(BuildContext context) async {
  return showDialog<ConfirmActionPaymentStatus>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[
              Container(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[

                  Column(
                    children: <Widget>[

                      Image.asset('images/icons/receipt.png', width: 150,height: 130,alignment: Alignment(1, 0),) ,

                      Container(width: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Rp\n\n',style: TextStyle(color: Colors.black,fontSize: 10)),
                          Text('100000',style: TextStyle(color: Colors.black,fontSize: 30)),
                        ],
                      ),

                    ],
                  ),


              ],),


              Container(height: 20,),
              new Text(
                'PAYMENT SUCCESS\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 20),),

              Text('Please take your receipt and collect \nyour order at pick up counter. Thank you', textAlign: TextAlign.center,style: TextStyle(fontSize: 15),
              ),
              Container(height: 20,),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(5,10,5,10),

                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent[100],

                  elevation: 0.0,
                  child:
                  MaterialButton(
                    height: 60,
                    onPressed: () async{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyHomePage()));

                    },

                    //minWidth: MediaQuery.of(context).size.,
                    child: Text(
                      "         OK         ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 22.0),
                    ),
                  ),
                ),
              )

            ]

        ),


      );
    },
  );
}



int price = 1000000;

class ChoosePaymentPage extends StatefulWidget {

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ChoosePaymentPage(
      {
        this.product_detail_name,
        this.product_detail_new_price,
        this.product_detail_old_price,
        this.product_detail_picture
      }
      );


  @override
  _ChoosePaymentPageState createState() => _ChoosePaymentPageState();
}

class _ChoosePaymentPageState extends State<ChoosePaymentPage> {


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
            height:85,
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                new Text(

                  "Rp",
                  style: new TextStyle(fontSize:30,
                      color: Colors.white,

                     ),
                  textAlign: TextAlign.right,
                ),

                new Text(
                  price.toString(),
                  style: new TextStyle(fontSize:80.0,
                      color:  Colors.white,

                      ),
                )
              ]

          ),
          Container(
            height:20,
          ),


          Text('SELECT PAYMENT METHOD',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
          ),

          Container(
            height:50,
          ),

          
          
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[

                new MaterialButton(onPressed: ()async{

                  final ConfirmAction action = await _asyncConfirmDialog(context);
                      print("Confirm Action $action" );
                    },
                  color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),

                    child:Image.asset('images/icons/payment2.png',height: 250,width: 200,) ,),





                Text('   ',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
                ),


                new MaterialButton(onPressed: ()async{
                  final ConfirmActionCardPayment action = await _asyncConfirmDialogCardPayment(context);
                  print("Confirm Action $action" );

                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                 child:Image.asset('images/icons/payment1.png',height: 250,width: 200,) ,)
              ]
          ),

          Container(
            height:20,
          ),


          Text('                       E-PAYMENT               CARD',textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
          ),


          Container(
            height:310,
          ),


          Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      height:50,width: 30,
                    ),
                          MaterialButton(onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=> OvereasyHomePage(),),);
                            },

                            child: Image.asset('images/icons/home_border.png',
                            width: 70,
                            ),


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
                          height: 60,
                          onPressed: () async{

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewOrderPage(),),);

                          },

                          //minWidth: MediaQuery.of(context).size.,
                          child: Text(
                            "<-             BACK             ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 22.0),
                          ),
                        ),
                      ),
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
                          height: 60,
                          onPressed: () async{
                            final ConfirmActionPaymentStatus action = await _asyncConfirmDialogPaymentStatus(context);
                            print("Confirm Action $action" );
                          },

                          //minWidth: MediaQuery.of(context).size.,
                          child: Text(
                            "         PAYMENT STATUS         ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 22.0),
                          ),
                        ),
                      ),
                    ),
                  ])

    ]),
    );
  }
}
