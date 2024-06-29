import 'package:responsive_framework/responsive_framework.dart';
import 'package:xeven_clone/data.dart';
import 'package:xeven_clone/widgets-export.dart';

final elevatedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color.fromRGBO(247, 127, 251, 1.0),
  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'poppins',
          useMaterial3: true,
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: elevatedButtonStyle)),
      builder: (context, child) => ResponsiveBreakpoints(breakpoints: const [
        Breakpoint(start: 0, end: 350, name: 'Unsupported'),
        Breakpoint(start: 351, end: 800, name: MOBILE),
        Breakpoint(start: 801, end: 800, name: TABLET),
        Breakpoint(start: 801, end: 1920, name: DESKTOP),
        Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ], child: child!),
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: appBarMenu
                  .map((menuTab) => ExpansionTile(
                        // onPressed: () {},
                        title: Text(
                          menuTab,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        children: [
                          ...appBarMenu_services.map(
                            (e) => TextButton(onPressed: () {}, child: Text(e)),
                          )
                        ],
                      ))
                  .toList() as List<Widget>),
        ),
        body: MyCustomScrollView(),
      ),
    );
  }
}
