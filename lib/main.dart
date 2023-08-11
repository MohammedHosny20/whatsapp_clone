import 'package:whatsapp_clone/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsManager.backgroundColor,
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobilePageLayout: mobilePageLayot,
        webPageLayout: webPageLayot,
      ),
    );
  }
}


/*
 * abstract class can't create object
 * ex: class_name instance_object = class_name(); --> not true
 * 
 * Design Pattern
 * MVVM
 * MVC
 * MVP
 *         states           request
 *      <----------       ---------->
 * ui               bloc               data
 *         events           response
 *      ---------->       <----------
 *
 * events: It is happening from the (Ui) like actions
 * states: like status ---> loading, loaded(success), failure 
 * 
 * 
 * 
 * Singleton design pattern
 * The singleton's purpose is to control object creation
*/