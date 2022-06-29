class ProductInventoriesModel {
  final String result;
  final List<ProductInventories> productInventories;

  ProductInventoriesModel({this.result, this.productInventories});

  factory ProductInventoriesModel.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['productinventories'] as List;
    print(parsedJson['productinventories']);
    print(list.runtimeType);
    List<ProductInventories> productInventories = list.map((i) => ProductInventories.fromJson(i)).toList();


    return ProductInventoriesModel(
        result: parsedJson['Result'],
        productInventories: productInventories
    );
  }
}

class ProductInventories {
  final String productInventoryId;
  final String productMasterId;
  final String productCode;
  final String consumptionType;
  final String productCategoryId;
  final String productCategoryName;
  final String currencyCode;
  final String price;
  final String quantity;
  final String cost;
  final String name;
  final String description;
  final String stockKeepingUnit;
  final String unitName;
  final String imageUrl;
  final String brand;
  final String manufacturer;
  final String dimension;
  final String size;
  final String taxationType;
  final String createdTime;
  final String updatedTime;
  final String isSubProduct;
  final String quantityType;
  final String status;
  final String lastBoughtTime;
  final String isFavorite;

  ProductInventories({
    this.price,
    this.name,
    this.size,
    this.brand,
    this.consumptionType,
    this.cost,
    this.createdTime,
    this.currencyCode,
    this.dimension,
    this.imageUrl,
    this.isFavorite,
    this.isSubProduct,
    this.lastBoughtTime,
    this.manufacturer,
    this.productCategoryId,
    this.productCategoryName,
    this.productCode,
    this.productInventoryId,
    this.productMasterId,
    this.quantity,
    this.quantityType,
    this.status,
    this.stockKeepingUnit,
    this.taxationType,
    this.unitName,
    this.updatedTime,
    this.description
  });

  factory ProductInventories.fromJson(Map<String, dynamic> parsedJson){
    print(parsedJson['product']);
    return ProductInventories(
        brand: parsedJson['brand'],
        consumptionType: parsedJson['consumption_Type'],
        cost:  parsedJson['cost'],
        createdTime: parsedJson['created_Time'],
        currencyCode: parsedJson['currency_Code'],
        description: parsedJson['description'],
        dimension: parsedJson['dimension'],
        imageUrl: parsedJson['image_Url'],
        isFavorite: parsedJson['is_Favorite'],
        isSubProduct: parsedJson['is_Sub_Product'],
        lastBoughtTime: parsedJson['last_Bought_Time'],
        manufacturer:  parsedJson['manufacturer'],
        name: parsedJson['name'],
        price: parsedJson['price'],
        productCategoryId: parsedJson['product_Category_Id'],
        productCategoryName: parsedJson['product_Category_Name'],
        productCode: parsedJson['product_Code'],
        productInventoryId: parsedJson['product_Inventory_Id'],
        productMasterId: parsedJson['product_Master_Id'],
        quantity: parsedJson['quantity'],
        quantityType:  parsedJson['quantity_Type'],
        size: parsedJson['size'],
        status: parsedJson['status'],
        stockKeepingUnit: parsedJson['stock_Keeping_Unit'],
        taxationType: parsedJson['taxation_Type'],
        unitName: parsedJson['unit_Name'],
        updatedTime: parsedJson['updated_Time'],

    );
  }
}