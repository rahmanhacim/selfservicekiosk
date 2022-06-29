import 'package:selfservicekiosk/database/LoginModel.dart';
import 'package:selfservicekiosk/database/ProductInventoriesModel.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'dart:async';

class DBHelper{

  static final DBHelper _instance = new DBHelper.internal();
  DBHelper.internal();

  factory DBHelper() => _instance;
  static Database _db;

  Future<Database> get db async{
    if(_db != null) return _db;
    _db = await setDB();
    return _db;
  }

  setDB() async{
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "OvereazySelfServiceKioskDB.db");
    print(path);

    var dB = await openDatabase(path, version:1, onCreate: _onCreate);

    return dB;
  }
  
  void _onCreate(Database db, int version)async{
    await db.execute("CREATE TABLE LOGIN_USER (DEVICE_ID INTERGER PRIMARY KEY UNIQUE, RESPONSE_CODE TEXT, PLATFORM TEXT, DEVICE_TRANSACTION_NUMBER_PREFIX INTERGER, DEVICE_NAME TEXT, CLIENT_DEVICE_IDENTIFIER TEXT)");

    await db.execute("CREATE TABLE PRODUCT_INVENTORIES (PRODUCT_INVENTORY_ID INTERGER PRIMARY KEY UNIQUE, PRODUCT_MASTER_ID TEXT, PRODUCT_CODE TEXT, CONSUMPTION_TYPE INTERGER, PRODUCT_CATEGORY_ID INTERGER, PRODUCT_CATEGORY_NAME TEXT, CURRENCY_CODE TEXT"
        "PRICE TEXT, QUANTITY INTERGER, COST TEXT, NAME TEXT, DESCRIPTION TEXT, STOCK_KEEPING_UNIT TEXT, UNIT_NAME TEXT, IMAGE_URL TEXT, BRAND TEXT, MANUFACTURE TEXT"
        "DIMENSION TEXT, SIZE TEXT, TAXATION_TYPE TEXT, CREATED_TIME INTERGER, UPDATED_TIME INTERGER, IS_SUB_PRODUCT TEXT, QUANTITY_TYPE TEXT, STATUS TEXT, LAST_BOUGHT_TIME INTERGER, IS_FAVOURITE TEXT )");

    print("Database Created");
  }

//LOGIN USER
  Future<int> saveUser(Login login) async{
    var dbClient = await db;
    String query = "INSERT OR REPLACE INTO LOGIN_USER(_responseCode, "
        "DEVICE_ID,"
        " PLATFORM, "
        "DEVICE_TRANSACTION_NUMBER_PREFIX,"
        " DEVICE_NAME, "
        "CLIENT_DEVICE_IDENTIFIER)"

        "VALUES("+login.responseCode+", '"+login.deviceId+"', '"+login.platform+"', "+login.deviceTransactionNumberPrefix+","
        " "+login.deviceName+",'"+login.clientDeviceIdentifier+"')";
    int res = await dbClient.rawInsert(query);
    print("Data Inserted For Device" + login.deviceId.toString());
    return res;
  }

  Future<List<Login>> getUser(String name) async{
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM LOGIN_USER WHERE DEVICE_NAME LIKE'%"+name+"%'");
    List<Login> listUser = new List();
    for (int i = 0; i < list.length; i++) {
      var dataUser = new Login(
          responseCode:  list[i]['_responseCode'].toString(),
          deviceId: list[i]['DEVICE_ID'],
          platform: list[i]['PLATFORM'],
          deviceTransactionNumberPrefix: list[i]['DEVICE_TRANSACTION_NUMBER_PREFIX'].toString(),
          deviceName: list[i]['DEVICE_NAME'].toString(),
          clientDeviceIdentifier: list[i]['CLIENT_DEVICE_IDENTIFIER'],
        );
      listUser.add(dataUser);
    }
    return listUser;
  }







  //PRODUCT INVENTORIES
  Future<int> saveProductInventories(ProductInventories productInventories) async{
    var dbClient = await db;
    String query = "INSERT OR REPLACE INTO PRODUCT_INVENTORIES(PRODUCT_INVENTORY_ID, "
        "PRODUCT_MASTER_ID,"
        "PRODUCT_CODE, "
        "CONSUMPTION_TYPE,"
        "PRODUCT_CATEGORY_ID, "
        "PRODUCT_CATEGORY_NAME,"
        "CURRENCY_CODE,"
        "PRICE, "
        "QUANTITY,"
        "COST, "
        "NAME,"
        "DESCRIPTION,"
        "STOCK_KEEPING_UNIT, "
        "UNIT_NAME,"
        "IMAGE_URL, "
        "BRAND,"
        "MANUFACTURE,"
        "DIMENSION, "
        "SIZE,"
        "TAXATION_TYPE, "
        "CREATED_TIME,"
        "UPDATED_TIME,"
        "IS_SUB_PRODUCT, "
        "QUANTITY_TYPE,"
        "STATUS, "
        "LAST_BOUGHT_TIME,"
        "IS_FAVOURITE)"

        "VALUES("+productInventories.productInventoryId+", '"+productInventories.productMasterId+"', '"+productInventories.productCode+"',"
        " "+productInventories.consumptionType+","
        " "+productInventories.productCategoryId+","
        " "+productInventories.productCategoryName+","
        " "+productInventories.currencyCode+","
        " "+productInventories.price+","
        " "+productInventories.quantity+","
        " "+productInventories.cost+","
        " "+productInventories.name+","
        " "+productInventories.description+","
        " "+productInventories.stockKeepingUnit+","
        " "+productInventories.unitName+","
        " "+productInventories.imageUrl+","
        " "+productInventories.brand+","
        " "+productInventories.manufacturer+","
        " "+productInventories.dimension+","
        " "+productInventories.size+","
        " "+productInventories.taxationType+","
        " "+productInventories.createdTime+","
        " "+productInventories.updatedTime+","
        " "+productInventories.isSubProduct+","
        " "+productInventories.quantityType+","
        " "+productInventories.status+","
        " "+productInventories.lastBoughtTime+","

        " "+productInventories.lastBoughtTime+",'"+productInventories.isFavorite+"')";
    int res = await dbClient.rawInsert(query);
    print("Data Inserted For Device" + productInventories.name.toString());
    return res;
  }

  Future<List<ProductInventories>> getProductInventories(String name) async{
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM PRODUCT_INVENTORIES WHERE PRODUCT_CATEGORY_NAME LIKE'%"+name+"%'");
    List<ProductInventories> listUser = new List();
    for (int i = 0; i < list.length; i++) {
      var dataUser = new ProductInventories(
        currencyCode:  list[i]['CURRENCY_CODE'].toString(),
        createdTime: list[i]['CREATED_TIME'],
        brand: list[i]['BRAND'],
        consumptionType: list[i]['CONSUMPTION_TYPE'].toString(),
        cost: list[i]['COST'].toString(),
        description: list[i]['DESCRIPTION'],
        dimension:  list[i]['DIMENSION'].toString(),
        imageUrl: list[i]['IMAGE_URL'],
        isFavorite: list[i]['IS_FAVOURITE'],
        isSubProduct: list[i]['IS_SUB_PRODUCT'].toString(),
        lastBoughtTime: list[i]['LAST_BOUGHT_TIME'].toString(),
        manufacturer: list[i]['MANUFACTURER'],
        name:  list[i]['NAME'].toString(),
        price: list[i]['PRICE'],
        productCategoryId: list[i]['PODUCT_CATEGORY_ID'],
        productCategoryName: list[i]['PRODUCT_CATEGORY_NAME'].toString(),
        productCode: list[i]['PRODUCTION_CODE'].toString(),
        productInventoryId: list[i]['PRODUCT_INVENTORY_ID'],
        productMasterId:  list[i]['PRODUCT_MASTER_ID'].toString(),
        quantity: list[i]['QUANTITY'],
        quantityType: list[i]['QUANTITY_TYPE'],
        size: list[i]['SIZE'].toString(),
        status: list[i]['STATUS'].toString(),
        stockKeepingUnit: list[i]['STOCK_KEEPING_UNIT'],
        taxationType:  list[i]['TAXATION_TYPE'].toString(),
        unitName: list[i]['UNIT_NAME'],
        updatedTime: list[i]['UPDATED_TIME'],

      );
      listUser.add(dataUser);
    }
    return listUser;
  }

}