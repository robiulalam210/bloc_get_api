import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'blocs/test/test_bloc.dart';
import 'configs/app_colors.dart';
import 'views/test_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TestBloc>(
          create: (context) => TestBloc(),
        ),

      ],
      child: MaterialApp(
        title: 'Toab Admin',
        theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seed),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: const AppBarTheme(backgroundColor: AppColors.white),
            listTileTheme: const ListTileThemeData(
              titleTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
              subtitleTextStyle: TextStyle(fontSize: 11, color: AppColors.grey),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.seed,
                elevation: 0,
                foregroundColor: Colors.white,
              ),
            )
        ),
        home: const TestView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}



