// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String name;
  final String description;
  final String image;
  final String cover;
  final int rate;
  final String text;
  final DateTime date;
  final Duration duration;

  UserModel({
    required this.name,
    required this.image,
    required this.description,
    required this.cover,
    required this.rate,
    required this.text,
    required this.date,
    required this.duration,
  });
}
