import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:selfservicekiosk/database/DatabaseHelper.dart';
import 'package:selfservicekiosk/database/LoginModel.dart';


class SelfServiceKiosk{


  static final SelfServiceKiosk _repo = SelfServiceKiosk._internal();

  DBHelper db;

  SelfServiceKiosk._internal() {
    db = DBHelper();
  }
  static SelfServiceKiosk get() {
    return _repo;
  }

  Future<List<Login>> requestMethod() async {

    LoginModel login ;

    var url = "http://staging.smartpoz.com:8080/smartpoz-web/api/json/user/loginUser";
    var body = json.encode(
        {
          "username":"overeazy",
          "password":"aaaaaa",
          "device":{
            "clientDeviceIdentifier":"AAABX3utl8Q7cc08baeb8f249c89b24d3427a5c8e04",
            "platform":"ANDROID",
            "platformVersion":"6.0.1",
            "deviceName":"samsung gts210velte"
          }
    });

    Map<String,String> headers = {
      'Accept' : 'application/json',
      'Content-Type' : 'application/json',
      'Cookie' : 'JSESSIONID=_ud0O8NUevEK0gL27cNt3u2Hqy6_PRS7US6XdfOX.ip-172-26-3-163; path=/smartpoz-web'

    };

    final response =
    await http.post(url, body: body, headers: headers);
    final responseJson = json.decode(response.body);
    login = new LoginModel.fromJson(responseJson);

    for(int i = 0; i < login.login.length; i++){
      Login loginUser = login.login[i];
      var thisLogin = Login(

        clientDeviceIdentifier: loginUser.clientDeviceIdentifier,
        device: loginUser.device,
        deviceId: loginUser.deviceId,
        deviceName: loginUser.deviceName,
        deviceTransactionNumberPrefix: loginUser.deviceTransactionNumberPrefix,
        message: loginUser.message,
        platform: loginUser.platform,
        platformVersion: loginUser.platformVersion,
        responseCode: loginUser.responseCode
      );

      db.saveUser(thisLogin);
    }


    return await db.getUser("");
  }


}