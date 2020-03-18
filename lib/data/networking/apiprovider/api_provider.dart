import 'package:http/http.dart' as http;
import 'package:zed/data/networking/customException/custom_Exception.dart';
import 'dart:convert';
import 'dart:async';

import 'package:zed/data/res/strings/string.dart';


// in this file will be add method

class ApiProvider {
  Future<dynamic> getDataModel(String url) async {
    //first will be get url
    var responseJson;
    try {
      var response = await http.get(AppStrings.baseUrl + url);

      responseJson = _response(response);
    } catch (error) {
      print(error.toString());
    }
    return responseJson;
  }

  // fetch object
  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        // succes data
        var responseJson = json.decode(response.body.toString());

        print(responseJson);
        return responseJson;
        break;
      case 400:
        throw BadRequestException(response.body.toString());
        break;
      case 403:
        throw UnauthorisedException(response.body.toString());
        break;
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
