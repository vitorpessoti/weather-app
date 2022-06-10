import 'package:mobile/models/hour.dart';
import 'package:mobile/models/weather-details.dart';

import '../models/month.dart';
import '../models/day.dart';

const DUMMY_DAYS = [
  Day(
    month: 3,
    day: 16,
    weekDay: 'Wednesday',
    icon: 'sun',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 28,
    tempMin: 20,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 17,
    weekDay: 'Thursday',
    icon: 'sun',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 28,
    tempMin: 20,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 18,
    weekDay: 'Friday',
    icon: 'cloud',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 27,
    tempMin: 20,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 19,
    weekDay: 'Saturday',
    icon: 'cloud-lightning',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 26,
    tempMin: 20,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 20,
    weekDay: 'Sunday',
    icon: 'heavy-rain',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 25,
    tempMin: 19,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 21,
    weekDay: 'Monday',
    icon: 'storm-with-heavy-rain',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 24,
    tempMin: 18,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
  Day(
    month: 3,
    day: 22,
    weekDay: 'Tuesday',
    icon: 'heavy-rain',
    weather: 'Clear',
    currentTemp: 23,
    tempMax: 22,
    tempMin: 16,
    currentTime: 1654887719,
    sunrise: 1654865230,
    sunset: 1654918121,
    weatherDetails: [
      WeatherDetails(
          title: 'Feels like', icon: 'feels-like', value: '19', unit: 'ºC'),
      WeatherDetails(
          title: 'Precipitation',
          icon: 'precipitation',
          value: '0.3',
          unit: 'mm'),
      WeatherDetails(title: 'Wind', icon: 'wind', value: '10', unit: 'km/h'),
      WeatherDetails(
          title: 'Pressure', icon: 'pressure', value: '1000', unit: 'hPa'),
      WeatherDetails(
          title: 'Humidity', icon: 'humidity', value: '85', unit: '%'),
      WeatherDetails(
          title: 'Dew point', icon: 'dew-point', value: '19', unit: 'ºC'),
      WeatherDetails(title: 'UV index', icon: 'sun', value: '5', unit: '/10'),
    ],
  ),
];

const DUMMY_MONTHS = [
  Month(
    id: 1,
    name: 'January',
  ),
  Month(
    id: 2,
    name: 'February',
  ),
  Month(
    id: 3,
    name: 'March',
  ),
  Month(
    id: 4,
    name: 'April',
  ),
  Month(
    id: 5,
    name: 'May',
  ),
  Month(
    id: 6,
    name: 'June',
  ),
  Month(
    id: 7,
    name: 'July',
  ),
  Month(
    id: 8,
    name: 'August',
  ),
  Month(
    id: 9,
    name: 'September',
  ),
  Month(
    id: 10,
    name: 'October',
  ),
  Month(
    id: 11,
    name: 'November',
  ),
  Month(
    id: 12,
    name: 'December',
  ),
];

const DUMMY_HOURS = [
  Hour(
    month: 3,
    day: 16,
    hour: '12',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '1',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '2',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '3',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '4',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '5',
    icon: 'light-rain',
    temp: 20,
    humidity: 90,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '6',
    icon: 'light-rain',
    temp: 20,
    humidity: 85,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '7',
    icon: 'sun',
    temp: 20,
    humidity: 85,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '8',
    icon: 'sun',
    temp: 21,
    humidity: 85,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '9',
    icon: 'sun',
    temp: 23,
    humidity: 85,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '10',
    icon: 'sun',
    temp: 23,
    humidity: 80,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '11',
    icon: 'sun',
    temp: 25,
    humidity: 80,
    windSpeed: 8,
  ),
  Hour(
    month: 3,
    day: 16,
    hour: '12',
    icon: 'sun',
    temp: 27,
    humidity: 80,
    windSpeed: 8,
  ),
];
