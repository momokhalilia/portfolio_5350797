import 'package:flutter/material.dart';

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lebenslauf'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lebenslauf von Ayoub Balhadi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Persönliche Informationen:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Name: Ayoub Balhadi\n'
                'Geburtsdatum: 10. Februar 1999\n'
                'Adresse: Steinkaute 4, 61169 Friedberg, Deutschland\n'
                'Telefon: +49 177 3226763\n'
                'Webmail: ayoub.balhadi@mnd.thm.de',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Berufserfahrung:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Baker McKenzie - Werkstudent im Bereich Office Services\n'
                'Zeitraum: Juli 2023 - heute\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Rewe Group - Kassierer / Verkäufer\n'
                'Zeitraum: November 2022 - Juni 2023\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Ausbildung:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Technische Hochschule Mittelhessen - Wirtschaftsinformatik\n'
                'Zeitraum: Oktober 2022 - heute\n',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Mohammed First University, Oujda, Marokko - Wirtschaftswissenschaften und Management\n'
                'Zeitraum: Oktober 2018 - Juli 2021\n',
                style: TextStyle(fontSize: 16),
              ),
               SizedBox(height: 16),
              Text(
                'Sprachen:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Deutsch, Englisch und Französisch: Sehr gute Kenntnisse\n'
                'Arabisch und Tamazight: Muttersprachen\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Interessen und Hobbys',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '''Reisen \n
                Fußball spielen / gucken \n 
                Programmieren \n
                Musik hören''',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
