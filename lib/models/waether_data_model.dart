class WeatherDataModel {
  String? name;
  String? country;
  String? last_updated;
  double? temp_c;
  String? conditionText;
  String? conditionIcon;
  double? maxtemp_c;
  double? mintemp_c;

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
          temp_c: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
          conditionText: json['current']['condition']['text'],
          conditionIcon: json['current']['condition']['icon'],
          maxtemp_c: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
          mintemp_c: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        );
}
