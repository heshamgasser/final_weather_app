class WeatherDataModel {
  String? name;
  String? country;
  String? last_updated;
  String? temp_c;
  String? conditionText;
  String? conditionIcon;
  String? maxtemp_c;
  String? mintemp_c;

  WeatherDataModel(
      {this.name,
      this.country,
      this.last_updated,
      this.temp_c,
      this.conditionText,
      this.conditionIcon,
      this.maxtemp_c,
      this.mintemp_c});

  WeatherDataModel.fromJson(Map<String, dynamic> json)
      : this(
          name: json['location']['name'],
          country: json['location']['country'],
          last_updated: json['current']['last_updated'],
          temp_c:
              json['forecast']['forecastday'][0]['day']['avgtemp_c'].toString(),
          conditionText: json['current']['condition']['text'],
          conditionIcon: json['current']['condition']['icon'],
          maxtemp_c:
              json['forecast']['forecastday'][0]['day']['maxtemp_c'].toString(),
          mintemp_c:
              json['forecast']['forecastday'][0]['day']['mintemp_c'].toString(),
        );
}
