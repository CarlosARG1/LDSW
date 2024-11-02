class CovidData {
  final String state;
  final int positive;
  final int negative;

  CovidData({required this.state, required this.positive, required this.negative});

  factory CovidData.fromJson(Map<String, dynamic> json) {
    return CovidData(
      state: json['state'],
      positive: json['positive'],
      negative: json['negative'],
    );
  }
}
