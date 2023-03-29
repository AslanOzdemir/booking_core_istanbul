import 'subscription.dart';

enum User1 {
  partner,
  mentor,
  employee,
  guest,
}
class User {
  final String name;
  final String photo;
  final String password;
  final String email;
  final List <Subscription> subsicription;

  User ({required this.name,required this.email, required this.password,
  required this.photo,required this.subsicription});
}