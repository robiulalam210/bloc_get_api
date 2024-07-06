import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_bloc/blocs/test/test_bloc.dart';
import 'package:get_bloc/blocs/test/test_event.dart';
import '../blocs/test/test_state.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TestBloc>().add(DoFetchTestList());

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            BlocBuilder<TestBloc, TestState>(
              builder: (context, state) {
                if (state is TestLoading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (state is TestSuccess) {
                  return Text(state.testModelList.length.toString());

                  //   ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: state.testModelList.length,
                  //   itemBuilder: (context, index) {
                  //     var data = state.testModelList[index];
                  //     return Text(data.title ?? "N/A");
                  //   },
                  // );
                } else if (state is TestFailed) {
                  return Text(state.message);
                } else {
                  return const Text('.');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
