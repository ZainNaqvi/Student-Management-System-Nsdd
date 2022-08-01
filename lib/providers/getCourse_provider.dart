import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nsdd/errors/exceptions.dart';
import 'package:nsdd/models/program.dart';
import 'package:nsdd/utils/helper.dart';
import '../networks/network_client.dart';

class GetOfferedCourse with ChangeNotifier {
  List<Program> programs = [];
  NetworkClient networkClient = NetworkClient();

  void getOfferedCourse({required String sendToken}) async {
    try {
      final res =
          await networkClient.get("api/offered-programs", token: sendToken);
      if (res.statusCode == 200) {
        Map<String, dynamic> mp = jsonDecode(res.toString());
        // print(mp);
        // Map<String, dynamic> mp = jsonDecode(res.toString());

        programs = (mp['data'] as List).map((e) {
          Program program = Program.fromJson(e['program']);
          return Program(
              id: program.id,
              title: program.title,
              imageUrl: "http://10.5.6.55:8000/${program.imageUrl}");
        }).toList();
        notifyListeners();
      }
    } on RemoteException catch (e) {
      Logger().e(e.dioError);
    }
  }
}
