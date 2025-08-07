
class CovidSummaryModel {
  final int cases;
  final int deaths;

    CovidSummaryModel({
    required this.cases,
    required this.deaths,
  });

  factory CovidSummaryModel.fromJson(Map<String,dynamic> json){
    return CovidSummaryModel(
      cases: json['cases'],
      deaths: json['deaths'],
    );
  }
  
}