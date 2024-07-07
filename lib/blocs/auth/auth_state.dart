

import 'package:equatable/equatable.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

//for login
final class SignInLoading extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInFailed extends AuthState {
  final String title, message;

  const SignInFailed({required this.title, required this.message});
}
//for login

//for route
final class RouteLogin extends AuthState {}

final class RouteHome extends AuthState {}
//end for route

//for update profile
final class UpdateProfileLoading extends AuthState {}

final class UpdateProfileFailed extends AuthState {
  final String title, message;

  const UpdateProfileFailed({required this.title, required this.message});
}

final class UpdateProfileSuccess extends AuthState {
  final String title, message;

  const UpdateProfileSuccess({required this.title, required this.message});
}
//end for update profile

//for send otp
final class SendOtpLoading extends AuthState {}

final class SendOtpFailed extends AuthState {
  final String title, message;

  const SendOtpFailed({required this.title, required this.message});
}

final class SendOtpSuccess extends AuthState {}
//end for send otp
