// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const url = "https://rest.coinapi.io/v1/exchangerate/BTC/USD";
const apikey = "1E716400-13AD-41D5-B894-DBBA4CCE0F73";

class NetworkHelper {
  Future getBTCRate(String currency) async {
    http.Response response = await http.get(
      Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=1E716400-13AD-41D5-B894-DBBA4CCE0F73",
      ),
    );
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }
  }

  Future getETHRate(String currency) async {
    http.Response response = await http.get(
      Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/ETH/$currency?apikey=1E716400-13AD-41D5-B894-DBBA4CCE0F73",
      ),
    );
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }
  }

  Future getLTCRate(String currency) async {
    http.Response response = await http.get(
      Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/LTC/$currency?apikey=1E716400-13AD-41D5-B894-DBBA4CCE0F73",
      ),
    );
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }
  }
}
