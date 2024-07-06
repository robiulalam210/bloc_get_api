import 'package:equatable/equatable.dart';
import '../../model/test_model.dart';

class TestState extends Equatable {
  const TestState();

  @override
  List<Object?> get props => [];
}

class TestInitial extends TestState {}

class TestLoading extends TestState {}

class TestSuccess extends TestState {
  final List<TestModelList> testModelList;
  const TestSuccess({required this.testModelList});

  @override
  List<Object?> get props => [testModelList];
}

class TestFailed extends TestState {
  final String message;
  const TestFailed({required this.message});

  @override
  List<Object?> get props => [message];
}
