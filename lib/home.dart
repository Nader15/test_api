import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:test3/api.dart'as util;



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {


  Future fetchData()async{
    String baseUrl = 'http://3.16.170.110:8081/Client/api/Car/GetAll';

    var response = await http.post(baseUrl ,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        HttpHeaders.authorizationHeader : 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiIyOSIsIlVzZXJTY29wZSI6IkNsaWVudCBTZXJ2aWNlIiwiVXNlclR5cGUiOiIxIiwibmJmIjoxNjA2MjE2ODI5LCJleHAiOjE2MDYyMzEyMjksImlhdCI6MTYwNjIxNjgyOSwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NDQzODIiLCJhdWQiOiJodHRwczovL2xvY2FsaG9zdDo0NDM1MiJ9.Gf5Mntc_r2jenalcUHVq0H_iHrzldcl2cV0UuUUkk2o' ,
      }
      );

    print("response : ${response.body}");
//    if(response.statusCode==200)
//      {
//        setState(() {
//          mapResponse = json.decode(response.body);
//        });
//      }
//    else
//    print((response.statusCode.toString()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("API-TEST"),
        centerTitle: true,
      ),
      body:Center(
        child: Text("hello"),
      ),
    );
  }
}
