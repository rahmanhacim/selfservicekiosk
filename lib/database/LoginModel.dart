class LoginModel {
  final String result;
  final List<Login> login;

  LoginModel({this.result, this.login});

  factory LoginModel.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['login'] as List;
    print(parsedJson['login']);
    print(list.runtimeType);
    List<Login> login = list.map((i) => Login.fromJson(i)).toList();


    return LoginModel(
        result: parsedJson['Result'],
        login: login
    );
  }
}

class Login {
  final String responseCode;
  final String message;
  final String device;
  final String deviceId;
  final String platform;
  final String platformVersion;
  final String deviceName;
  final String clientDeviceIdentifier;
  final String deviceTransactionNumberPrefix;

  Login({this.responseCode,
    this.message,
    this.device,
    this.deviceId,
    this.platform,
    this.platformVersion,
    this.deviceName,
    this.clientDeviceIdentifier,
    this.deviceTransactionNumberPrefix});

  factory Login.fromJson(Map<String, dynamic> parsedJson){
    print(parsedJson['product']);
    return Login(
        responseCode:parsedJson['response_Code'],
        message: parsedJson['message'],
        device: parsedJson['device'],
        deviceId: parsedJson['device_Id'],
        platform: parsedJson['platform'],
        platformVersion: parsedJson['platform_Version'],
        deviceName: parsedJson['device_Name'],
        clientDeviceIdentifier: parsedJson['client_Device_Identifier'],
        deviceTransactionNumberPrefix: parsedJson['device_Transaction_Number_Prefix']
    );
  }
}