import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


const List<String> _iconNames = <String>[
  'assets/img/Gerald_G_Creation_Days_Numbers.svg',
  'assets/img/Gerald_G_Creation_Days_Numbers_1.svg',
  'assets/img/Gerald_G_Creation_Days_Numbers_2.svg',
];

const List<String> _uriNames = <String>[
  'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/410.svg',
  'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Flutter Task 01',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Task 01 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final double width = 200;
  final double height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: OverflowBox(
        minWidth: 0,
        maxWidth: double.infinity,
        minHeight: 0,
        maxHeight: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Добавьте в assets svg изображение и выведите его с помощью этого виджета.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.asset(
                        fit: BoxFit.contain,
                        _iconNames[0],
                        colorFilter: ColorFilter.mode(
                          Colors.blueGrey[50] ?? Colors.blueGrey,
                          BlendMode.srcIn,
                        ),
                        matchTextDirection: true,
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.asset(
                        fit: BoxFit.contain,
                        _iconNames[1],
                        colorFilter: ColorFilter.mode(
                          Colors.blueGrey[50] ?? Colors.blueGrey,
                          BlendMode.srcIn,
                        ),
                        matchTextDirection: true,
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.asset(
                        fit: BoxFit.contain,
                        _iconNames[2],
                        colorFilter: ColorFilter.mode(
                          Colors.blueGrey[50] ?? Colors.blueGrey,
                          BlendMode.srcIn,
                        ),
                        matchTextDirection: true,
                      ),
                    ),


                  ],
                ),
                const Text('С помощью виджета загрузите изображение из сети и отобразите это изображение на экране.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.network(
                        fit: BoxFit.contain,
                        _uriNames[0],
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.network(
                        fit: BoxFit.contain,
                        _uriNames[1],
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: SvgPicture.network(
                        fit: BoxFit.contain,
                        _uriNames[2],
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
