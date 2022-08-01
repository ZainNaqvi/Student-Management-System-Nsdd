import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nsdd/models/user.dart';
import 'package:nsdd/providers/change_password_provider.dart';
import 'package:nsdd/providers/country_provider.dart';
import 'package:nsdd/providers/forgot_password_provider.dart';
import 'package:nsdd/providers/getCourse_provider.dart';
import 'package:nsdd/providers/login_provider.dart';
import 'package:nsdd/providers/otp_verification_provider.dart';
import 'package:nsdd/providers/signup_provider.dart';
import 'package:nsdd/utils/theme_dark.dart';
import 'package:nsdd/utils/theme_light.dart';
import 'package:provider/provider.dart';
import 'providers/password_provider.dart';
import 'utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => GetOfferedCourse(),
          ),
          ChangeNotifierProvider(
            create: (_) => PasswordProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => CountryProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => SignupProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => OTPVerificationProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LoginProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ChangePasswordProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ForgotPasswordProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // Theme config
          themeMode: ThemeMode.system,
          theme: themeDataLight,
          darkTheme: themeDataDark,
          // Routes config
          initialRoute: RouteGenerator.splash,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
      designSize: const Size(375, 812),
    );
  }
}
