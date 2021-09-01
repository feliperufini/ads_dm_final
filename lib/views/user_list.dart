import 'package:ads_dm_final/views/user_form.dart';
import 'package:flutter/material.dart';
// import 'package:ads_dm_final/components/usrer_tile.dart';
// import 'package:ads_dm_final/provider/users.dart';
// import 'package:ads_dm_final/routes/app_routes.dart';
// import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListItens(title: 'Sacola de Itens'),
    );
  }
}

class ListItens extends StatefulWidget {
  ListItens({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListItensState createState() => _ListItensState();
}

class _ListItensState extends State<ListItens> {
  int _counter = 0;
  int _banana = 0;
  int _maca = 0;

  void _incrementCounter(String tipo) {
    if (tipo == 'banana' && _banana >= 0) {
      setState(() {
        _counter++;
        _banana++;
      });
    } else if (tipo == 'maca' && _maca >= 0) {
      setState(() {
        _counter++;
        _maca++;
      });
    }
  }

  void _decrementCounter(String tipo) {
    if (tipo == 'banana' && _banana >= 1) {
      setState(() {
        _counter--;
        _banana--;
      });
    } else if (tipo == 'maca' && _maca >= 1) {
      setState(() {
        _counter--;
        _maca--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text('Banana Nanica'),
              subtitle: Text('R\$5,00'),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://saborizatti.com.br/wp-content/uploads/2020/12/banana-nanica.png')),
              trailing: Wrap(
                spacing: 0,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    color: Colors.blue,
                    onPressed: () {
                      _incrementCounter('banana');
                    },
                  ),
                  Text(
                    '$_banana',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle),
                    color: Colors.red,
                    onPressed: () {
                      _decrementCounter('banana');
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Maça'),
              subtitle: Text('R\$2,00'),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.receitaemcasa.com.br/wp-content/uploads/2012/04/ma%C3%A7a-1.jpg')),
              trailing: Wrap(
                spacing: 0,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    color: Colors.blue,
                    onPressed: () {
                      _incrementCounter('maca');
                    },
                  ),
                  Text(
                    '$_maca',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle),
                    color: Colors.red,
                    onPressed: () {
                      _decrementCounter('maca');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TOTAL DE ITENS: $_counter    ',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF0751B1),
              ),
            ),
            ElevatedButton(
              child: Text('Finalizar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserForm()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
