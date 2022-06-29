import 'package:flutter/material.dart';
import 'package:selfservicekiosk/homepage/homepage.dart';
import 'package:selfservicekiosk/revieworderpage/ReviewOrderPage.dart';
import 'package:selfservicekiosk/paymentpage/choosepaymentpage.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:selfservicekiosk/database/ProductInventoriesModel.dart';

import 'package:selfservicekiosk/database/ServiceKioskProductInventoriesRepository.dart' as repo;



void main(){

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: OvereasyHomePage(),

  ),);


}