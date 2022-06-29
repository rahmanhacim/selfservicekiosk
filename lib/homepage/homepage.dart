import 'package:flutter/material.dart';
import 'package:selfservicekiosk/order/overeasyorderpage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:selfservicekiosk/database/DatabaseHelper.dart';
import 'package:selfservicekiosk/database/ProductInventoriesModel.dart';
import 'dart:async';
import 'package:selfservicekiosk/database/ServiceKioskProductInventoriesRepository.dart' as repo;

final database = new DBHelper();

StreamController _getProductController;
loadData()async{

  await repo.SelfServiceKioskProductInventoriesRepository.get().requestProductInventoriesMethod().then((res)async{
    _getProductController.add(res);
    print(res);
    return res;
  });
}

//Fetch Database
//Database User
Future<http.Response> requestMethodUser() async {
  var url = "http://staging.smartpoz.com:8080/smartpoz-web/api/json/user/fetchUser";
  var body = json.encode({
    "store":{
      "address":{
        "city":null,
        "country":"Indonesia",
        "district":null,
        "line1":null,
        "line2":null,
        "line3":null,
        "postcode":null,
        "stateOrProvince":"DKI Jakarta",
        "village":null
      },
      "createdTime":1541646962000,
      "currencyCode":"IDR",
      "email":null,
      "identificationNumber":null,
      "imageUrl":null,
      "minimumComplementaryAmount":null,
      "numberOfColumn":"3",
      "numberOfTable":"8",
      "parent":null,
      "paymentGatewayCredentials":null,
      "phone":"",
      "registrationNumber":"001",
      "status":"ACTIVE",
      "storeId":1,
      "storeName":"smartpoz",
      "storeType":"WHOLESALE",
      "taxNumber":"001",
      "updatedTime":1541646962000,
      "user":null,
      "website":"google.com"
    },
    "username":"smartpoz"});

  Map<String,String> headers = {
    'Accept' : 'application/json',
    'Content-Type' : 'application/json',
    'Cookie' : 'JSESSIONID=dbxTbfLvsE0kDPI97K73TqoLIq_tSUIX_IhU2vKR.ip-172-26-3-163; path=/smartpoz-web'

  };

  final response =
  await http.post(url, body: body, headers: headers);
  final responseJson = json.decode(response.body);
  print(responseJson);
  return response;
}

//Database Products
Future<http.Response> requestMethodProducts() async {
  var url = "http://staging.smartpoz.com:8080/smartpoz-web/api/json/product/fetchAllProductCategories";
  var body = json.encode({
    "paginationRequest":{
      "requestedNumberOfRecords":50,
      "sortedBy":null,
      "startIndex":0
    }});

  Map<String,String> headers = {
    'Accept' : 'application/json',
    'Content-Type' : 'application/json',
    'Cookie' : 'JSESSIONID=cq9sYeTanTGFgpy8g7h_CJrWEXJSi_Id7gVFW5bm.ip-172-26-3-163; path=/smartpoz-web'

  };

  final response =
  await http.post(url, body: body, headers: headers);
  final responseJson = json.decode(response.body);
  print(responseJson);
  return response;
}

//Database Product Inventories

Future<http.Response> requestMethodProductInventory() async {
  var url = "http://staging.smartpoz.com:8080/smartpoz-web/api/json/product/fetchProductInventoriesWithAnyUpdate";
  var body = json.encode({
    "paginationRequest":{
      "requestedNumberOfRecords":50,
      "sortedBy":null,
      "startIndex":0
    },
    "lastAnyUpdatedTimestamp":0
  });

  Map<String,String> headers = {
  'Cache-Control':'no-cache',
    'Accept' : 'application/json',
    'Content-Type' : 'application/json',
    'Cookie' : 'JSESSIONID=dbxTbfLvsE0kDPI97K73TqoLIq_tSUIX_IhU2vKR.ip-172-26-3-163; path=/smartpoz-web'

  };

  final response =
  await http.post(url, body: body, headers: headers);
  final responseJson = json.decode(response.body);
  print(responseJson);
  return response;
}




//Main Page
enum ConfirmAction { GO_PAY, OVO, LINK_AJA }
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
              new Text(
                  'SELECT OPTION\n',textAlign: TextAlign.center,),

              Row(children: <Widget>[
                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyOrderPage()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/dine_in.png',height: 180,width: 110,) ,


                ),
                Container(width: 20,),



                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new OvereasyOrderPage()));


                },color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.orangeAccent[100])),
                  child:Image.asset('images/icons/take_away.png',height:180,width: 110,) ,),


              ],),
              Container(height: 20,),
              new Text('      DINE IN             TAKE AWAY'),


        Container(height: 20,),


            ]

        ),


      );
    },
  );
}


ProductInventories p;
class OvereasyHomePage extends StatefulWidget {

  @override
  _OvereasyHomePageState createState() => _OvereasyHomePageState();
}

class _OvereasyHomePageState extends State<OvereasyHomePage> {


  void initState(){
    _getProductController = new StreamController();
    loadData();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image.asset('images/PNGFile/background.png', fit: BoxFit.cover,),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),

              Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),

              Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),

              Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),
              Text('', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50),
              ),


              Container(
                child: Image.asset('images/PNGFile/overeazy_white.png', width: 350,height: 150,),
              ),

              Padding(
                padding:
                const EdgeInsets.all(20.0),

                child: Material(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.black,
                  elevation: 0.0,
                  child: MaterialButton(
                    onPressed: () async{
                      final ConfirmAction action = await _asyncConfirmDialog(context);
                      print("Confirm Action $action" );
                      //print(requestMethodUser());

                     // print(requestMethodProducts());

                      print(requestMethodProductInventory());

                     // print(database.getUser(""));

                      print(database.saveProductInventories(p));
                      print(database.getProductInventories(""));

                      return database.saveProductInventories(p);

                    },

                    minWidth: MediaQuery.of(context).size.width,
                    child: Text(
                      "TOUCH TO ORDER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.orangeAccent[100],
                          fontFamily: 'Nunito',
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
