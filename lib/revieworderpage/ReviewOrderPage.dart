import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';
import 'package:selfservicekiosk/order/overeasyorderpage.dart';
import 'package:selfservicekiosk/paymentpage/choosepaymentpage.dart';


class ReviewOrderPage extends StatefulWidget {

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ReviewOrderPage(
      {
        this.product_detail_name,
        this.product_detail_new_price,
        this.product_detail_old_price,
        this.product_detail_picture
      }
      );


  @override
  _ReviewOrderPageState createState() => _ReviewOrderPageState();
}

class _ReviewOrderPageState extends State<ReviewOrderPage> {

  Widget imageCarousel = new Container(
    height: 180.0,
    child: new Carousel(
      boxFit: BoxFit.fill,
      images: [
        AssetImage('images/PNGFile/tab bar_review order.png'),
      ],

      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 0.0,
      dotColor: Colors.transparent,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.transparent,
    ),
  );

  int product1 = 0;
  int product2 = 0;
  int product3 = 0;
  int product4 = 0;

  void add() {
    setState(() {
      product1++;
    });
  }

  void minus() {
    setState(() {
      if (product1 != 0)
        product1--;
    });
  }


  void add2() {
    setState(() {
      product2++;
    });
  }

  void minus2() {
    setState(() {
      if (product2 != 0)
        product2--;
    });
  }

  void add3() {
    setState(() {
      product3++;
    });
  }

  void minus3() {
    setState(() {
      if (product3 != 0)
        product3--;
    });
  }

  void add4() {
    setState(() {
      product4++;
    });
  }

  void minus4() {
    setState(() {
      if (product4 != 0)
        product4--;
    });
  }

  @override
  Widget build(BuildContext context) {

    var card = new Card(
      color: Colors.black,
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Image.asset('images/PNGFile/menu 1.png', fit: BoxFit.cover,),
            title: new Text("Capucino"
              ,style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100]),),
            subtitle: new Text("Rp. 20000", style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100])),
          ),

          ],
      ),
    );

    final sizedBox = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 85.0,
        child: card,
      ),
    );
    final center = new Center(
      child: sizedBox,
    );

    var card2 = new Card(
      color: Colors.black,
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Image.asset('images/PNGFile/menu 2.png', fit: BoxFit.cover,),
            title: new Text("Soda"
              ,style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100]),),
            subtitle: new Text("Rp. 25000", style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100])),
          ),

        ],
      ),
    );

    final sizedBox2 = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 85.0,
        child: card2,
      ),
    );
    final center2 = new Center(
      child: sizedBox2,
    );

    var card3 = new Card(
      color: Colors.black,
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Image.asset('images/PNGFile/menu 2.png', fit: BoxFit.cover,),
            title: new Text("Soda"
              ,style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100]),),
            subtitle: new Text("Rp. 25000", style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100])),
          ),

        ],
      ),
    );

    final sizedBox3 = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 85.0,
        child: card3,
      ),
    );
    final center3 = new Center(
      child: sizedBox3,
    );

    var card4 = new Card(
      color: Colors.black,
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Image.asset('images/PNGFile/menu 2.png', fit: BoxFit.cover,),
            title: new Text("Soda"
              ,style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100]),),
            subtitle: new Text("Rp. 25000", style: new TextStyle(fontWeight: FontWeight.w400, color: Colors.orangeAccent[100])),
          ),

        ],
      ),
    );

    final sizedBox4 = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 85.0,
        child: card4,
      ),
    );
    final center4 = new Center(
      child: sizedBox4,
    );


    return Scaffold(

        backgroundColor: Colors.black,


        body: new ListView(
        children: <Widget>[
        imageCarousel,

          center,


          Container(
            child: new Center(
              child: new Row(

                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[

                  new Text('awdad',
                      style: new TextStyle(fontSize: 30.0,color: Colors.transparent)),

                new FloatingActionButton(
                  heroTag: "btn2",
                  shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                  mini: true,
                  onPressed: minus,
                  child: new Icon(
                      const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                      color: Colors.orangeAccent[100]),
                  backgroundColor: Colors.black,),


                  new Text('$product1',
                      style: new TextStyle(fontSize: 30.0,color: Colors.orangeAccent[100])),


                  new FloatingActionButton(
                    heroTag: "btn1",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: add,
                    child: new Icon(Icons.add, color: Colors.orangeAccent[100],),
                    backgroundColor: Colors.black,),

                ],
              ),
            ),
          ),
          center2,


          Container(
            child: new Center(
              child: new Row(

                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[

                  new Text('awdad',
                      style: new TextStyle(fontSize: 30.0,color: Colors.transparent)),



                  new FloatingActionButton(
                    heroTag: "btn4",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: minus2,
                    child: new Icon(
                        const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                        color: Colors.orangeAccent[100]),
                    backgroundColor: Colors.black,),


                  new Text('$product2',
                      style: new TextStyle(fontSize: 30.0,color: Colors.orangeAccent[100])),

                  new FloatingActionButton(
                    heroTag: "btn3",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: add2,
                    child: new Icon(Icons.add, color: Colors.orangeAccent[100],),
                    backgroundColor: Colors.black,),
                ],
              ),
            ),
          ),


          center3,


          Container(
            child: new Center(
              child: new Row(

                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[

                  new Text('awdad',
                      style: new TextStyle(fontSize: 30.0,color: Colors.transparent)),

                  new FloatingActionButton(
                    heroTag: "btn6",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: minus3,
                    child: new Icon(
                        const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                        color: Colors.orangeAccent[100]),
                    backgroundColor: Colors.black,),



                  new Text('$product3',
                      style: new TextStyle(fontSize: 30.0,color: Colors.orangeAccent[100])),


                  new FloatingActionButton(
                    heroTag: "btn5",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: add3,
                    child: new Icon(Icons.add, color: Colors.orangeAccent[100],),
                    backgroundColor: Colors.black,),

                ],
              ),
            ),
          )




          ,center4,

          Container(
            child: new Center(
              child: new Row(

                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[

                  new Text('awdad',
                      style: new TextStyle(fontSize: 30.0,color: Colors.transparent)),


                  new FloatingActionButton(
                    heroTag: "btn8",
                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: minus4,
                    child: new Icon(
                        const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                        color: Colors.orangeAccent[100]),
                    backgroundColor: Colors.black,),

                  new Text('$product4',
                      style: new TextStyle(fontSize: 30.0,color: Colors.orangeAccent[100])),


                  new FloatingActionButton(
                    heroTag: "btn7",

                    shape: CircleBorder(side: BorderSide(color: Colors.orangeAccent[100])),
                    mini: true,
                    onPressed: add4,
                    child: new Icon(Icons.add, color: Colors.orangeAccent[100],),
                    backgroundColor: Colors.black,),

                ],
              ),
            ),
          ),


          Container(
            height:15,
          ),

          Padding(
            padding:
            const EdgeInsets.all(20.0),

              child :Material(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.orangeAccent[100],
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyOrderPage()));
                  },

                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "BUY ANOTHER ITEM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Nunito',
                        fontSize: 20.0),
                  ),
                ),
              ),
        ),

          Container(
            height:170,
          ),


          Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.white),
          ),


          Text('   Total', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 35, color: Colors.white),
          ),

          Text('   '+(product1+product2+product3+product4).toString()+' Items | '+price.toString(), style: TextStyle(fontWeight: FontWeight.w300, fontSize: 35, color: Colors.white),
          ),

          Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 5, color: Colors.white),
          ),



          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              new Container(
                width: 65,
              ),
              MaterialButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyHomePage(),),);
              },

                child: Image.asset('images/icons/home_border.png',
                  width: 75,
                ),


              ),

              new Container(
                width: 20,
              ),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(5,15,5,15),

                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent[100],
                  elevation: 0.0,
                  child:
                  MaterialButton(
                    onPressed: () async{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OvereasyHomePage(),),);
                    },

                    //minWidth: MediaQuery.of(context).size.,
                    child: Text(
                      "X      CANCEL ORDER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 22.0),
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

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ChoosePaymentPage(),),);

                    },

                    //minWidth: MediaQuery.of(context).size.,
                    child: Text(
                      "             PAY             ->",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 22.0),
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
