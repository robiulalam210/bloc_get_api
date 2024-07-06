import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/test/test_bloc.dart';
import '../blocs/test/test_event.dart';
import '../blocs/test/test_state.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<TestBloc>().add(DoFetchTestList());

    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) {
          if (state is TestLoading) {
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is TestSuccess) {
            return ListView.builder(
              itemCount: state.testModelList.length,
              itemBuilder: (context, index) {
                var data = state.testModelList[index];
                // Example of safely accessing nullable data
                return ListTile(
                  title: Text(data.title ?? "N/A"), // Safe usage of nullable 'data.title'
                );
              },
            );
          } else if (state is TestFailed) {
            return Center(
              child: Text(state.message ?? "Error message is null"), // Safe usage of nullable 'state.message'
            );
          } else {
            return Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
    );
  }
}
