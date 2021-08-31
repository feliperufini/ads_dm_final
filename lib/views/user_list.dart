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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
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
                    onPressed: _incrementCounter,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle),
                    color: Colors.red,
                    onPressed: _decrementCounter,
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
              'Total de Itens: $_counter',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
