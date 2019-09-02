class User {
  final int userId;
  final int retailer_id;
  final String stage;
  final String stage_alias;

  User({this.userId, this.retailer_id, this.stage, this.stage_alias});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      retailer_id: json['id'],
      stage: json['stage'],
      stage_alias: json['stage_alias'],
    );
  }
}