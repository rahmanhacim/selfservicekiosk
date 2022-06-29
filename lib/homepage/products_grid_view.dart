import 'package:flutter/material.dart';
import 'package:selfservicekiosk/product_details/product_details.dart';
import 'package:selfservicekiosk/revieworderpage/ReviewOrderPage.dart';
import 'package:selfservicekiosk/drinktopping/IceSugarTopping.dart';
import 'package:selfservicekiosk/drinktopping/HotSugarTopping.dart';

enum ConfirmAction { GO_PAY, OVO, LINK_AJA }
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
    "name":"Cappucino",
    "picture":"images/PNGFile/menu 1.png",

  },
    {
      "name":"Soda",
      "picture":"images/PNGFile/menu 2.png",

    },
    {
      "name":"Lemon Tea",
      "picture":"images/PNGFile/menu_5.png",

    },
    {
      "name":"Sunkist",
      "picture":"images/PNGFile/menu 4.png",

    },
    {
      "name":"Tea",
      "picture":"images/PNGFile/menu 3.png",

    },
    {
      "name":"Taro Latte",
      "picture":"images/PNGFile/menu 6.png",

    }

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      padding: EdgeInsets.all(20),
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            product_name: product_list[index]['name'],
            product_pict: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],

          );
        });

  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_pict;
  final product_old_price;
  final product_price;

  Single_prod({
    this.product_name,
    this.product_old_price,
    this.product_pict,
    this.product_price
});


Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(


        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: <Widget>[
              new Image.asset(product_pict,width: 100,),

              new Text('\n'+
                  product_name +
                  '\n\nSelect Hot/Cold & Size'+
                  '\n\n ------------------- COLD -------------------\n',textAlign: TextAlign.center,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new IceAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/cold_small.png',height: 140,width: 70,) ,


                ),
                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new IceAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/cold_medium.png',height: 140,width: 70,) ,


                ),

                Container(width: 20,),



                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new IceAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/cold_large.png',height:140,width: 70,) ,),


              ],),
              Container(height: 8,),
              Text(' Small             Medium             Large', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.black),
              ),

              Text('        Rp. 20.000        Rp. 23.000             Rp. 25.000', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
              ),



              new Text(
                '\n\n ------------------- HOT -------------------\n',textAlign: TextAlign.center,),

              Container(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: <Widget>[
                new MaterialButton(onPressed: (){



                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new HotAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:

                  Image.asset('images/icons/hot_large.png',height: 140,width: 70,) ,


                ),
                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new HotAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/hot_medium.png',height: 140,width: 70,) ,

                ),

                Container(width: 20,),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new HotAndSugarDrinkTopping()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/hot_small.png',height: 140,width: 70,) ,


                )],),

              Container(height: 8,),
              Text(' Small             Medium             Large', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.black),
              ),

              Text('        Rp. 20.000        Rp. 23.000             Rp. 25.000', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
              ),




              Container(height: 20,),


            ]

        ),


      );



    },
  );
}





@override
  Widget build(BuildContext context) {
  

    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.orangeAccent[100])),
      margin: EdgeInsets.all(30),

      child: Hero(tag: product_name,
        child: Material(
           child: InkWell(onTap:
            ()async{

             final ConfirmAction action = await _asyncConfirmDialog(context);
             print("Confirm Action $action" );
           },
              child: GridTile(footer:
              Container(
                color: Colors.transparent,
                width: 10,

                child: ListTile(
                  leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white),
                textAlign: TextAlign.center,),
                ),

              ),
                 child: Image.asset(product_pict, width: 90,),

        ),
        ),

        ),
      ),
    );
  }
}
