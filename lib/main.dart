import 'package:flutter/material.dart';
import 'cv_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cv': (context) =>
            CVPage(), // Hier wird das Routing zur Lebenslaufseite hinzugefügt
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: height,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Name: mohammad khalilia',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Webmail:mohammad.khalilia@mnd.thm.de',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () => _scrollToSection(height),
                    child: const Text('Über mich'),
                  ),
                  ElevatedButton(
                    onPressed: () => _scrollToSection(height * 2),
                    child: const Text('Skills'),
                  ),
                  ElevatedButton(
                    onPressed: () => _scrollToSection(height * 3),
                    child: const Text('Projects'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,
                          '/cv'); // Hier wird zur Lebenslaufseite navigiert
                    },
                    child: const Text('Lebenslauf'),
                  ),
                ],
              ),
            ),
            Container(
              height: height,
              color: Colors.grey[200],
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''Hallo!. Ich bin Mohammad khalilia. Willkommen auf meiner Portfolio-Seite.\n
                       und ich wurde am 12. Dezember 1998, palästina, geboren.\n
                      Derzeit befinde ich mich im 6. Semester meines Studiums der Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen, Campus Friedberg.\n
                      Meine akademische Reise hat mich von palästina nach Deutschland geführt, wo ich meine Leidenschaft für die Verbindung von Wirtschaft und Informationstechnologie weiterverfolgen konnte.\n
                      Neben meinem Studium engagiere ich mich in verschiedenen beruflichen Tätigkeiten, die mir praktische Einblicke in die Arbeitswelt verschaffen und meine theoretischen Kenntnisse ergänzen.\n''',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height,
              color: Colors.white,
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '''Flutter\n
                      Dart\n
                      Python\n
                      Java\n
                      MySQL\n
                      Datenpflege\n
                      SAP GUI\n
                      SAP S/4HANA\n
                      Microsoft Office''',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height,
              color: Colors.grey[200],
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Projects',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
