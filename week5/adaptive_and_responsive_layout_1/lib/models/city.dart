import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class City {
  String name;
  String snapDegree;
  String maxDegree;
  String minDegree;
  String forcest;
  IconData iconforast;
  String day;
  List<TimeWeather> timeWeathers;
  List<DailyWeather> dailyWeather;
  WeatherDetails weatherDetails;

  City(
      {required this.name,
      required this.snapDegree,
      required this.maxDegree,
      required this.minDegree,
      required this.forcest,
      required this.iconforast,
      required this.day,
      required this.timeWeathers,
      required this.dailyWeather,
      required this.weatherDetails});
}

class TimeWeather {
  String time;
  IconData iconData;
  String degree;
  TimeWeather(
      {required this.time, required this.iconData, required this.degree});
}

class DailyWeather {
  String time;
  IconData iconData;
  String forcest;
  String maxDegree;
  String minDegree;
  DailyWeather(
      {required this.time,
      required this.iconData,
      required this.forcest,
      required this.maxDegree,
      required this.minDegree});
}

class WeatherDetails {
  String apperentTemp;
  String humidity;
  String eseWind;
  String uv;
  String visibility;
  String airPressure;
  WeatherDetails(
      {required this.apperentTemp,
      required this.humidity,
      required this.eseWind,
      required this.uv,
      required this.visibility,
      required this.airPressure});
}

List<City> cities = [
  City(
    name: "Tosya",
    snapDegree: "8",
    maxDegree: "17",
    minDegree: "6",
    forcest: "Partly Cloudy",
    iconforast: WeatherIcons.cloudy_gusts,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: WeatherIcons.cloudy, degree: "17"),
      TimeWeather(time: "14:00", iconData:  WeatherIcons.cloud_down, degree: "16"),
      TimeWeather(time: "15:00", iconData:  WeatherIcons.cloudy_windy, degree: "15"),
      TimeWeather(time: "16:00", iconData:  WeatherIcons.cloudy_windy, degree: "14"),
      TimeWeather(time: "17:00", iconData:  WeatherIcons.cloudy_gusts, degree: "13"),
      TimeWeather(time: "18:00", iconData:  WeatherIcons.cloudy_windy, degree: "11"),
      TimeWeather(time: "19:00", iconData:  WeatherIcons.day_cloudy_high, degree: "10"),
      TimeWeather(time: "20:00", iconData:  WeatherIcons.day_sunny_overcast, degree: "10"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: WeatherIcons.cloudy_windy,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: WeatherIcons.cloudy,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: WeatherIcons.day_sunny_overcast,
          forcest: "Sunny",
          maxDegree: "20",
          minDegree: "10"),
      DailyWeather(
          time: "Tue",
          iconData: WeatherIcons.showers,
          forcest: "Showers",
          maxDegree: "11",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: WeatherIcons.storm_showers,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: WeatherIcons.night_storm_showers,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "17",
        humidity: "69%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "16 km",
        airPressure: "1017 hPa"),
  ),

  City(
    name: "Atakum",
    snapDegree: "6",
    maxDegree: "15",
    minDegree: "5",
    forcest: "Showers",
    iconforast: WeatherIcons.showers,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "6"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "9"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "10"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "13"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "9"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "15",
        humidity: "79%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "14 km",
        airPressure: "1018 hPa"),
  ),

  City(
    name: "Hakkari",
    snapDegree: "5",
    maxDegree: "12",
    minDegree: "4",
    forcest: "Windy",
    iconforast: WeatherIcons.day_sunny_overcast,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "12"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "11"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "15"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "10"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "9"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "7"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "6"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Sunny",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "12",
        humidity: "64%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "18 km",
        airPressure: "1016 hPa"),
  ),
  City(
    name: "Tosya",
    snapDegree: "8",
    maxDegree: "17",
    minDegree: "6",
    forcest: "Partly Cloudy",
    iconforast: WeatherIcons.day_snow,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "17"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Sunny",
          maxDegree: "20",
          minDegree: "10"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "11",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "17",
        humidity: "69%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "16 km",
        airPressure: "1017 hPa"),
  ),

  City(
    name: "Atakum",
    snapDegree: "6",
    maxDegree: "15",
    minDegree: "5",
    forcest: "Showers",
    iconforast: WeatherIcons.wind_beaufort_11,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "6"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "9"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "10"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "13"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "9"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "15",
        humidity: "79%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "14 km",
        airPressure: "1018 hPa"),
  ),

  City(
    name: "Hakkari",
    snapDegree: "5",
    maxDegree: "12",
    minDegree: "4",
    forcest: "Windy",
    iconforast: WeatherIcons.celsius,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "12"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "11"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "15"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "10"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "9"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "7"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "6"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Sunny",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "12",
        humidity: "64%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "18 km",
        airPressure: "1016 hPa"),
  ),
  City(
    name: "Tosya",
    snapDegree: "8",
    maxDegree: "17",
    minDegree: "6",
    forcest: "Partly Cloudy",
    iconforast: WeatherIcons.day_rain,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "17"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "17"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Sunny",
          maxDegree: "20",
          minDegree: "10"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "11",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "17",
        humidity: "69%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "16 km",
        airPressure: "1017 hPa"),
  ),

  City(
    name: "Atakum",
    snapDegree: "6",
    maxDegree: "15",
    minDegree: "5",
    forcest: "Showers",
    iconforast: WeatherIcons.day_fog,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "14:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "15:00", iconData: Icons.mediation, degree: "6"),
      TimeWeather(time: "16:00", iconData: Icons.mediation, degree: "9"),
      TimeWeather(time: "17:00", iconData: Icons.mediation, degree: "8"),
      TimeWeather(time: "18:00", iconData: Icons.mediation, degree: "10"),
      TimeWeather(time: "19:00", iconData: Icons.mediation, degree: "13"),
      TimeWeather(time: "20:00", iconData: Icons.mediation, degree: "9"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "Mon",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Partly cloudy",
          maxDegree: "15",
          minDegree: "4"),
      DailyWeather(
          time: "wed",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Scattered sho..",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: Icons.media_bluetooth_on_outlined,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "15",
        humidity: "79%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "14 km",
        airPressure: "1018 hPa"),
  ),

  City(
    name: "Hakkari",
    snapDegree: "5",
    maxDegree: "12",
    minDegree: "4",
    forcest: "Windy",
    iconforast: WeatherIcons.day_rain_wind,
    day: "Nov 5 Sat",
    timeWeathers: [
      TimeWeather(time: "13:00", iconData: WeatherIcons.snow_wind, degree: "12"),
      TimeWeather(time: "14:00", iconData: WeatherIcons.day_snow_wind, degree: "11"),
      TimeWeather(time: "15:00", iconData: WeatherIcons.day_snow_wind, degree: "15"),
      TimeWeather(time: "16:00", iconData: WeatherIcons.snowflake_cold, degree: "10"),
      TimeWeather(time: "17:00", iconData: WeatherIcons.wind_beaufort_11, degree: "9"),
      TimeWeather(time: "18:00", iconData: WeatherIcons.day_snow_wind, degree: "7"),
      TimeWeather(time: "19:00", iconData: WeatherIcons.day_snow_wind, degree: "8"),
      TimeWeather(time: "20:00", iconData: WeatherIcons.day_snow_wind, degree: "6"),
    ],
    dailyWeather: [
      DailyWeather(
          time: "Today",
          iconData: WeatherIcons.day_rain,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tomorrow",
          iconData: WeatherIcons.sunset,
          forcest: "Sunny",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Mon",
          iconData: WeatherIcons.sunset,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Tue",
          iconData: WeatherIcons.cloudy_windy,
          forcest: "Partly cloudy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "wed",
          iconData: WeatherIcons.day_snow_wind,
          forcest: "Windy",
          maxDegree: "18",
          minDegree: "6"),
      DailyWeather(
          time: "Thu",
          iconData: WeatherIcons.day_snow_wind,
          forcest: "Showers",
          maxDegree: "18",
          minDegree: "6"),
    ],
    weatherDetails: WeatherDetails(
        apperentTemp: "12",
        humidity: "64%",
        eseWind: "Breeze",
        uv: "Very weal",
        visibility: "18 km",
        airPressure: "1016 hPa"),
  ),
 

];



































// class Email{
//   late String title;
//   late String explanation;
//   late bool isFav;
//   late DateTime sendDate;
//   late String userImg;
//   late String imgUrl;

//   Email({required this.title,required this.explanation,required this.isFav,required this.sendDate,required this.userImg,required this.imgUrl});
// }

// List<Email> emails = [
//   Email(title: "Amazon Alexa", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "Dribble", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "Google Local Guides", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "Udactiy India", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "HackerEarth", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "Amazon Web Service", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
//   Email(title: "Oracle", explanation: "LoremdcsdncjADMLDCMScm", isFav: false, sendDate: DateTime(2017,9,7,17,30), userImg: "", imgUrl: ""),
// ];