import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:magic_sdk/magic_sdk.dart';
// import 'package:responsive_framework/responsive_framework.dart';
import 'package:unito/src/features/auth/screens/onboard_screen.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  await dotenv.load(fileName: "secrets.env.development");
  String magicPublishableKey = dotenv.get('MAGIC_PUBLISHABLE_KEY');
  Magic.instance = Magic(magicPublishableKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF06000A)),
      home: const OnboardingScreen(),
      // builder: (context, child) => ResponsiveWrapper.builder(
      //   child,
      //   maxWidth: 1200,
      //   minWidth: 480,
      //   defaultScale: true,
      //   breakpoints: const [
      //     ResponsiveBreakpoint.resize(480, name: MOBILE),
      //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //     ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //   ],
      // ),
    );
  }
}
