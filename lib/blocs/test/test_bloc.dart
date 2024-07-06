import 'package:bloc/bloc.dart';
import 'package:get_bloc/blocs/test/test_event.dart';
import 'package:get_bloc/blocs/test/test_state.dart';
import 'package:get_bloc/configs/app_urls.dart';
import 'package:get_bloc/repositories/get_response.dart';

import '../../model/api_response_mod.dart';
import '../../model/test_model.dart';
import '../../utilities/app_parse_json.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  List<TestModelList> tests = [];

  TestBloc() : super(TestInitial()) {
    on<DoFetchTestList>((event, emit) async {
      emit(TestLoading()); // Add this line to emit loading state

      logger.f("message Do FetchAttendList");

      final responseStr = await getResponse(url: "https://jsonplaceholder.org/posts");
      logger.f("message ${responseStr.length}");
      ApiResponse<List<TestModelList>> response = appParseJson<List<TestModelList>>(
        responseStr,
            (data) => List<TestModelList>.from(data.map((x) => TestModelList.fromJson(x))),
      );

      print("st${response}");
      if (response.success != true) {
        emit(TestFailed(message: response.message ?? "Something went wrong"));
        return;
      }

      final data = response.data;

      if (data == null || data.isEmpty) {
        emit(const TestFailed(message: "No data"));
        return;
      }
      tests = data;
      emit(TestSuccess(testModelList: tests));
    });
  }
}
