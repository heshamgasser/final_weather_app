/// location : {"name":"London","region":"City of London, Greater London","country":"United Kingdom","lat":51.52,"lon":-0.11,"tz_id":"Europe/London","localtime_epoch":1706430553,"localtime":"2024-01-28 8:29"}
/// current : {"last_updated_epoch":1706429700,"last_updated":"2024-01-28 08:15","temp_c":2.0,"temp_f":35.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":130,"wind_dir":"SE","pressure_mb":1023.0,"pressure_in":30.21,"precip_mm":0.0,"precip_in":0.0,"humidity":93,"cloud":0,"feelslike_c":-1.4,"feelslike_f":29.6,"vis_km":10.0,"vis_miles":6.0,"uv":2.0,"gust_mph":12.9,"gust_kph":20.7}

class CurrentWeatherModel {
  CurrentWeatherModel({
      this.location, 
      this.current,});

  CurrentWeatherModel.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
  }
  Location? location;
  Current? current;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    return map;
  }

}

/// last_updated_epoch : 1706429700
/// last_updated : "2024-01-28 08:15"
/// temp_c : 2.0
/// temp_f : 35.6
/// is_day : 1
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// wind_mph : 3.8
/// wind_kph : 6.1
/// wind_degree : 130
/// wind_dir : "SE"
/// pressure_mb : 1023.0
/// pressure_in : 30.21
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 93
/// cloud : 0
/// feelslike_c : -1.4
/// feelslike_f : 29.6
/// vis_km : 10.0
/// vis_miles : 6.0
/// uv : 2.0
/// gust_mph : 12.9
/// gust_kph : 20.7

class Current {
  Current({
      this.lastUpdatedEpoch, 
      this.lastUpdated, 
      this.tempC, 
      this.tempF, 
      this.isDay, 
      this.condition, 
      this.windMph, 
      this.windKph, 
      this.windDegree, 
      this.windDir, 
      this.pressureMb, 
      this.pressureIn, 
      this.precipMm, 
      this.precipIn, 
      this.humidity, 
      this.cloud, 
      this.feelslikeC, 
      this.feelslikeF, 
      this.visKm, 
      this.visMiles, 
      this.uv, 
      this.gustMph, 
      this.gustKph,});

  Current.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }
  num? lastUpdatedEpoch;
  String? lastUpdated;
  num? tempC;
  num? tempF;
  num? isDay;
  Condition? condition;
  num? windMph;
  num? windKph;
  num? windDegree;
  String? windDir;
  num? pressureMb;
  num? pressureIn;
  num? precipMm;
  num? precipIn;
  num? humidity;
  num? cloud;
  num? feelslikeC;
  num? feelslikeF;
  num? visKm;
  num? visMiles;
  num? uv;
  num? gustMph;
  num? gustKph;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = lastUpdatedEpoch;
    map['last_updated'] = lastUpdated;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    if (condition != null) {
      map['condition'] = condition?.toJson();
    }
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['uv'] = uv;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    return map;
  }

}

/// text : "Sunny"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/113.png"
/// code : 1000

class Condition {
  Condition({
      this.text, 
      this.icon, 
      this.code,});

  Condition.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
  String? text;
  String? icon;
  num? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['icon'] = icon;
    map['code'] = code;
    return map;
  }

}

/// name : "London"
/// region : "City of London, Greater London"
/// country : "United Kingdom"
/// lat : 51.52
/// lon : -0.11
/// tz_id : "Europe/London"
/// localtime_epoch : 1706430553
/// localtime : "2024-01-28 8:29"

class Location {
  Location({
      this.name, 
      this.region, 
      this.country, 
      this.lat, 
      this.lon, 
      this.tzId, 
      this.localtimeEpoch, 
      this.localtime,});

  Location.fromJson(dynamic json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }
  String? name;
  String? region;
  String? country;
  num? lat;
  num? lon;
  String? tzId;
  num? localtimeEpoch;
  String? localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['region'] = region;
    map['country'] = country;
    map['lat'] = lat;
    map['lon'] = lon;
    map['tz_id'] = tzId;
    map['localtime_epoch'] = localtimeEpoch;
    map['localtime'] = localtime;
    return map;
  }

}