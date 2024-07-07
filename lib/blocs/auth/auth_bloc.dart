// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// import '../../configs/app_urls.dart';
// import '../../model/api_response_mod.dart';
// import '../../repositories/post_response.dart';
//
// part 'auth_event.dart';
//
// part 'auth_state.dart';
//
// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   String? token;
//   LoginModel? loginData;
//
//   AuthBloc() : super(AuthInitial()) {
//     //for sign in
//     on<DoSignInEvent>((event, emit) async {
//       logger.f("message DoALoginEvent");
//       emit(SignInLoading());
//
//       final responseStr =
//           await postResponse(url: AppUrls.login, payload: event.payload);
//
//       ApiResponse<LoginModel> response = appParseJson<LoginModel>(
//         responseStr,
//         (data) => LoginModel.fromJson(data),
//       );
//
//       if (response.success != true) {
//         emit(SignInFailed(
//             title: response.title ?? 'Failed',
//             message:
//                 response.message ?? 'Something went wrong. Please try again.'));
//         return;
//       }
//
//       token = response.token;
//       loginData = response.data;
//
//       emit(SignInSuccess());
//
//       //save all local value here
//       LocalDB.putEmail(event.payload['email'] ?? '');
//       LocalDB.putPassword(event.payload['password'] ?? '');
//     });
//     //end for sign in
//
//     //for route
//     on<DoRoute>((event, emit) async {
//       logger.f("message DoRoute");
//       final authInfo = await LocalDB.getSignInInfo();
//       if (authInfo == null) {
//         emit(RouteLogin());
//         return;
//       }
//
//       Map<String, String> payload = {
//         "email": authInfo.email,
//         "password": authInfo.password
//       };
//
//       final responseStr =
//           await postResponse(url: AppUrls.login, payload: payload);
//
//       ApiResponse<LoginModel> response = appParseJson<LoginModel>(
//         responseStr,
//         (data) => LoginModel.fromJson(data),
//       );
//
//       if (response.success != true) {
//         emit(RouteLogin());
//         return;
//       }
//
//       token = response.token;
//       loginData = response.data;
//       emit(RouteHome());
//     });
//     //end for route
//
//     //for update profile
//     on<DoUpdateProfileEvent>((event, emit) async {
//       logger.f("message DoUpdateProfileEvent");
//       emit(UpdateProfileLoading());
//       final responseStr = await patchImageResponse(
//           url: AppUrls.profile,
//           payload: event.payload,
//           photoPath: event.photoPath,
//           token: event.token);
//       ApiResponse response = appParseJson(responseStr, (data) => data);
//       if (response.success != true) {
//         emit(UpdateProfileFailed(
//             title: response.title ?? "Failed",
//             message: response.message ?? "Failed to update profile"));
//         return;
//       }
//
//       final profileData =
//           await getResponse(url: AppUrls.profile, token: event.token);
//       ApiResponse<LoginModel> response2 = appParseJson<LoginModel>(
//           profileData, (data) => LoginModel.fromJson(data));
//       loginData = response2.data;
//
//       emit(UpdateProfileSuccess(
//           title: response.title ?? "Success",
//           message: response.message ?? "Profile updated successfully"));
//       LocalDB.putEmail(event.payload['email'] ?? '');
//     });
//     //end for update profile
//
//     //for send otp
//     on<DoSendOtpEvent>((event, emit) async {
//       logger.f("message DoSendOtpEvent");
//       emit(SendOtpLoading());
//       final responseStr =
//           await postResponse(payload: event.payload, url: AppUrls.sendEmailOtp);
//
//       ApiResponse response = appParseJson(responseStr, (data) => data);
//
//       if (response.success != true) {
//         emit(SendOtpFailed(
//             title: response.title ?? "Failed",
//             message: response.message ?? "Failed to send OTP code"));
//         return;
//       }
//
//       emit(SendOtpSuccess());
//     });
//     //for end send otp
//   }
// }
