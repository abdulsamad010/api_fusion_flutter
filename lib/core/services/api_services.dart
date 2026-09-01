import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {

  Future<dynamic> getApi(String address) async{
    try {
      final url = Uri.parse(address);

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data=jsonDecode(response.body);
        return data;
      }
      else{
        return "failed";
      }
    }
    catch(e){
      print("Exception: $e");
      return "exception";
    }
  }

  Future<dynamic> postApi(String address, dynamic data) async{
    try {
      final url = Uri.parse(address);

      final response = await http.post(
          url,
        headers: {
          "Content-Type":"application/json"
        },
        body: jsonEncode(data)
      );

      if (response.statusCode == 201) {
        final data=jsonDecode(response.body);
        return data;
      }
      else{
        return "failed";
      }
    }
    catch(e){
      print("Exception: $e");
      return "exception";
    }
  }

  Future<dynamic> putApi(String address, dynamic data) async{
    try {
      final url = Uri.parse(address);

      final response = await http.put(
          url,
          headers: {
            "Content-Type":"application/json"
          },
          body: jsonEncode(data)
      );

      if (response.statusCode == 200) {
        final data=jsonDecode(response.body);
        return data;
      }
      else{
        return "failed";
      }
    }
    catch(e){
      print("Exception: $e");
      return "exception";
    }
  }


  Future<dynamic> deleteApi(String address) async{
    try {
      final url = Uri.parse(address);

      final response = await http.delete(
          url
      );

      if (response.statusCode == 204) {
        return "success";
      }
      else{
        return "failed";
      }
    }
    catch(e){
      print("Exception: $e");
      return "exception";
    }
  }

}