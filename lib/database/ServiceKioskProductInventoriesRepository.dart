import 'package:selfservicekiosk/database/ProductInventoriesModel.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:selfservicekiosk/database/DatabaseHelper.dart';

class SelfServiceKioskProductInventoriesRepository{

  static final SelfServiceKioskProductInventoriesRepository _repo = SelfServiceKioskProductInventoriesRepository._internal();

  DBHelper db;

  SelfServiceKioskProductInventoriesRepository._internal() {
    db = DBHelper();
  }
  static SelfServiceKioskProductInventoriesRepository get() {
    return _repo;
  }

  Future<List<ProductInventories>> requestProductInventoriesMethod() async {

    ProductInventoriesModel productInventories ;

    var urlProductInventories = "http://staging.smartpoz.com:8080/smartpoz-web/api/json/product/fetchProductInventoriesWithAnyUpdate";
    var bodyProductInventories = json.encode(
        {
          "paginationRequest":{
            "requestedNumberOfRecords":50,
            "sortedBy":null,
            "startIndex":0
          },
          "lastAnyUpdatedTimestamp":0
        });

    Map<String,String> headers = {
      'Accept' : 'application/json',
      'Content-Type' : 'application/json',
      'Cookie' : 'JSESSIONID=dbxTbfLvsE0kDPI97K73TqoLIq_tSUIX_IhU2vKR.ip-172-26-3-163; path=/smartpoz-web'

    };

    final http.Response response =
    await http.post(bodyProductInventories, body: urlProductInventories, headers: headers);
    final responseJson = json.decode(response.body);
    productInventories = new ProductInventoriesModel.fromJson(responseJson);

    for(int i = 0; i < productInventories.productInventories.length; i++){
      ProductInventories productinventorieskiosk = productInventories.productInventories[i];
      var thisProductInventories = ProductInventories(

        cost:  productinventorieskiosk.cost,
        consumptionType: productinventorieskiosk.consumptionType,
        brand: productinventorieskiosk.brand,
        createdTime:  productinventorieskiosk.createdTime,
        currencyCode : productinventorieskiosk.currencyCode,
        description : productinventorieskiosk.description,
        dimension:  productinventorieskiosk.dimension,
        imageUrl: productinventorieskiosk.imageUrl,
        isFavorite: productinventorieskiosk.isFavorite,
        isSubProduct:  productinventorieskiosk.isSubProduct,
        lastBoughtTime: productinventorieskiosk.lastBoughtTime,
        manufacturer: productinventorieskiosk.manufacturer,
        name:  productinventorieskiosk.name,
        price: productinventorieskiosk.price,
        productCategoryId: productinventorieskiosk.productCategoryId,
        productCategoryName:  productinventorieskiosk.productCategoryName,
        productCode : productinventorieskiosk.productCode,
        productInventoryId : productinventorieskiosk.productInventoryId,
        productMasterId:  productinventorieskiosk.productMasterId,
        quantity: productinventorieskiosk.quantity,
        quantityType: productinventorieskiosk.quantityType,
        size:  productinventorieskiosk.size,
        status: productinventorieskiosk.status,
        stockKeepingUnit: productinventorieskiosk.stockKeepingUnit,
        taxationType: productinventorieskiosk.taxationType,
        unitName: productinventorieskiosk.unitName,
        updatedTime:  productinventorieskiosk.updatedTime,

      );

      db.saveProductInventories(thisProductInventories);
    }


    return await db.getProductInventories("");
  }

}


