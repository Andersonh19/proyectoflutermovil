import 'dart:convert';
import 'package:http/http.dart' show Response, get;
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String time = ''; // the time in that location (initialized with an empty string)
  String flag; // url to an asset flag icon
  String url; // location url for API endpoint
  bool isDaytime = false; // initial value for isDaytime
  Map<dynamic, dynamic> data;

  WorldTime({required this.location, required this.flag, required this.url})
      : data = {};

  Future<void> getTime() async {
    try {
      Response response = await get(
          Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      if (response.body != null && response.body.isNotEmpty) {
        data = json.decode(response.body);
        // Resto del código
      }

      if (data != null) {
        String datatime = data['datetime'];
        String offset = data['utc_offset'].substring(1, 3);

        //create datime
        DateTime now = DateTime.parse(datatime);
        now = now.add(Duration(hours: int.parse(offset)));
        //set time
        isDaytime = now.hour > 6 && now.hour < 27 ? true : false;
        time = DateFormat.jm().format(now);
      } else {
        time = 'could not get time data';
      }
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}


