import 'package:flutter/material.dart';
import 'package:pro6/api/ras.dart';
import 'package:pro6/interfaz/desarrollador.dart';
import 'package:pro6/interfaz/reportes.dart';
import 'package:pro6/interfaz/grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R.A.S',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        primaryColorDark: Color(0xFF128C7E),
      ),
      home: WhatsAppHomePage(),
    );
  }
}

class WhatsAppHomePage extends StatefulWidget {
  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R.A.S'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Acción de menú
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Miguel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '+1 263 382 564',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              title: Text('REPORTES'),
              leading: Icon(Icons.report),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => reportes(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('REPORTES'),
              leading: Icon(Icons.home),
              onTap: () {
                Buscaras().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("RAS"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(r[i].url),
                                ),
                                title: Text(r[i].title),
                                trailing: Text(r[i].id.toString()),
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('CONTACTO'),
              leading: Icon(Icons.phone),
            ),
            Divider(),
            ListTile(
              title: Text('DESARROLLADOR'),
              leading: Icon(Icons.contacts),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programa(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('GRIND'),
              leading: Icon(Icons.home_max_outlined),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => serpientes(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPq9DqB8qDyonyAtdH2q8pQ40bsp1oNuDYVw&s'),
          ),
          Text('RAS')
        ],
      ),
    );
  }
}

GalleryPage() {}
