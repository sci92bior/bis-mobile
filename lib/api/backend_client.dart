

import 'dart:convert';
import 'dart:io';
import 'package:bis/utils/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';

import '../utils/shared_preferences.dart';

class BackendClient {

  late BackendClient instance;

  final log = getLogger('BackendClient');

  Future initialise() async {
    log.i('Load storage');
    instance =  BackendClient();
    log.v('Storage loaded');
  }

  var url = "http://192.168.1.158:8080";

/*  Future<http.Response?> createDevice(String producer, String model,
      String osVersion, String deviceId, String firebaseId) async {

     var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
      print('Create Device');
      print('JWT Token : $jwtToken');

      var body = jsonEncode(<String, String>{
        'producer': producer,
        'model': model,
        'osVersion': osVersion,
        'deviceId': deviceId,
        'firebaseId' : firebaseId
      });
      return http.post(
          Uri.parse('$url/api/device/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
          },
          body: body
      );
  }

  Future<http.Response?> updateDevice(String producer, String model,
      String osVersion, String deviceId, String firebaseId) async {

    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
      print('Create Device');
      print('JWT Token : $jwtToken');

      var body = jsonEncode(<String, String>{
        'producer': producer,
        'model': model,
        'osVersion': osVersion,
        'deviceId': deviceId,
        'firebaseId' : firebaseId
      });
      return http.post(
          Uri.parse('$url/api/device/update/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
          },
          body: body
      );
  }

  Future<http.Response?> sendSOSAlarm(String issueType, String alertType) async {

    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
    print('Create Device');
    print('JWT Token : $jwtToken');

    var body = jsonEncode(<String, String>{
      'issueType': issueType,
      'alertType': alertType
    });
    return http.post(
        Uri.parse('$url'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        },
        body: body
    );
  }

  Future<http.Response?> markNotificationAsReceived(String id) async {

    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
    print('Create Device');
    print('JWT Token : $jwtToken');

    return http.post(
        Uri.parse('$url/api/notifications-response/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        }
    );
  }

  Future<http.Response> getAllOpenIssueAlarms() async {

    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");

    return http.get(
        Uri.parse('$url/api/alarm/open/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        }
    );
  }

  Future<http.Response> getAllAlarmsWhichImResponsible() async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
    return http.get(
        Uri.parse('$url/api/alarm/my'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        }
    );
  }

  Future<http.Response> takeResponsibility(int sosAlertId) async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");

    return http.post(
        Uri.parse('$url/api/alarm/take/$sosAlertId'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        },
    );
  }

  Future<http.Response> closeAlert(String id)async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
    return http.post(
        Uri.parse('$url/api/alarm/close/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
        }
    );
  }*/

  Future<http.Response> signIn(String username, String password) {
    var body = jsonEncode(<String, String>{
      'username': username,
      'password': password,
    });
    return http.post(
        Uri.parse('$url/auth/sign-in'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body
    );
  }


/*  Future<http.Response?> downloadLatestNews() async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
      return http.post(
          Uri.parse('$url/api/news/download'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
          },

      );

  }

  Future<http.Response?> getAllNews() async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
      return http.get(
          Uri.parse('$url/api/news/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
          }
      );

  }

  Future<http.Response?> checkNewNews() async {
    var jwtToken = await MySharedPreferences.instance.getStringValue("jwtToken");
      return http.get(
          Uri.parse('$url/api/news/check'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: 'Bearer $jwtToken',
          });
  }*/
}
