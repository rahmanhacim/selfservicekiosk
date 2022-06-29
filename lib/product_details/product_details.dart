import 'package:flutter/material.dart';



class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
  {
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  }
);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: new ListView(
        children: <Widget>[
          new Container(
            height: 350.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                  color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
                footer: new Container(
                  color: Colors.black12,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(child: new Text("Old Price : \n\$${widget.product_detail_new_price}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),)),
                        Expanded(child: new Text("Sale Price : \n\$${widget.product_detail_old_price}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)))

                    ],
                    ),
                  ),
                ),
            ),
          ),




          // =========== First Button ===========
          Row(
            children: <Widget>[
              // The size Button
              Expanded(
                child: MaterialButton(onPressed: (){

                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("XL"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"),)
                      ],
                    );
                  });

                },
                color: Colors.white,
                textColor: Colors.blueGrey,
                  elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    new Text("Size")
                  ],
                ),),
              ),
              Expanded(
                child: new Icon(
                  Icons.arrow_drop_down_circle
                ),
              ),

              Expanded(
                child: new Mbutton(),
              ),
              Expanded(
                child: new Icon(
                    Icons.arrow_drop_down_circle
                ),
              ),



              Expanded(
                child: MaterialButton(onPressed: (){

                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("10"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),)
                          ],
                        );
                      });

                },
                  color: Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      new Text("Qty")
                    ],
                  ),),
              ),
              Expanded(
                child: new Icon(
                    Icons.arrow_drop_down_circle
                ),
              )

            ],
          ),

          //The Second button


          Divider(),
          new ListTile(
            title: new Text("Product Details :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
            subtitle: new Text("OVO adalah aplikasi smart  yang memberikan Anda kemudahan dalam bertransaksi (OVO Cash) dan juga kesempatan yang lebih besar untuk mengumpulkan poin di banyak tempat (OVO Points)."),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
              child: new Text("Product Name :", style: TextStyle(fontWeight: FontWeight.w900),),

              ),

              Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
                child: new Text(widget.product_detail_name),)

            ],
          ),
          Divider(),
          new Row(
              children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
          child: new Text("Product Brand :", style: TextStyle(fontWeight: FontWeight.w900),)
            ,),


                Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
                  child: new Text("Lippo Group"),)

              ]
          ),

          Divider(),
          new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
                  child: new Text("Product Condition :", style: TextStyle(fontWeight: FontWeight.w900),
                  ),),


                Padding(padding: const EdgeInsets.fromLTRB(12.5, 5.0, 5.0, 5.0),
                  child: new Text("Very Good"),)



              ]
          ),

        Divider(),
          Row(
            children: <Widget>[

              Expanded(child: MaterialButton(onPressed: (){},

                color: Colors.redAccent,
                textColor: Colors.white,
                elevation: 5,

                child: new Text("Buy Now!"),
              )
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}, color: Colors.red),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}, color: Colors.red)

            ],
          ),


        ],
      ),
    );
  }
}

class Mbutton extends StatelessWidget {
  const Mbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){

      showDialog(context: context,
          builder: (context){
            return new AlertDialog(
              title: new Text("Color"),
              content: new Text("Blue"),
              actions: <Widget>[
                new MaterialButton(onPressed: (){
                  Navigator.of(context).pop(context);
                },
                  child: new Text("Close"),)
              ],
            );
          });

    },
      color: Colors.white,
      textColor: Colors.blueGrey,
      elevation: 0.2,
      child: Row(
        children: <Widget>[
          new Text("Clr")
        ],
      ),);
  }
}
