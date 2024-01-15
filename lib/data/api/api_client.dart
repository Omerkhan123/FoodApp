import 'dart:math';

import 'package:get/get.dart';
// this class for API client data so here we code for it
// why we  need it here coz Api client its use to talk to server and that's why we use it.
class ApiClient extends GetConnect implements GetxService{
late  String token;
final String appBaseUrl;

// map use for storing data locally and  converting data to map  and work key and pair type
  // map have a this brackets {}
 late Map<String, String> _mainHeaders;
// its constructor below
 ApiClient({ required this.appBaseUrl}){
   // these two are variable for get
   baseUrl = appBaseUrl;
   timeout = const Duration(seconds: 30);
   _mainHeaders= {
     'Content-type' : 'application/json; charset=UTF-8',
     'Authorization': 'bearer $token',
   };
 }
 // its simple request to get data and mean response is from getX package
  Future<Response> getData(String uri,) async {
   try{
     Response response = await get(uri);
     return response;
   }
   catch(e){
     return Response(statusCode: 1 , statusText:  e.toString());
   }

  }



}