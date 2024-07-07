
import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}


//for sign in
class DoSignInEvent extends AuthEvent{
  final Map<String, String> payload;

  const DoSignInEvent({required this.payload});
}
//end sign in

class DoRoute extends AuthEvent{}


class DoUpdateProfileEvent extends AuthEvent{
  final Map<String, String> payload;
  final String token;
  final String? photoPath;

  const DoUpdateProfileEvent({required this.payload, required this.token, required this.photoPath});
}



class DoSendOtpEvent extends AuthEvent{
  final Map<String, String> payload;
  const DoSendOtpEvent({required this.payload});
}
