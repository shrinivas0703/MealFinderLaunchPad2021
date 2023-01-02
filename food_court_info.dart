class food_court_info {
  final String breakfast;
  final String lunch;
  final String dinner;

  food_court_info({required this.breakfast, required this.lunch, required this.dinner});
  factory food_court_info.fromJson(final json) {
    return food_court_info(
        breakfast: json["meal"[0]],
        lunch: json["meal"[1]],
        dinner: json["meal"[2]],
    );
  }
}
