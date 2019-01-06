import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
		length: 5,
		child: Scaffold(
			backgroundColor: Colors.blueGrey[900],
			appBar: AppBar(
				title: Text('Troca almoço'),
				elevation: 0.0,
			),
			drawer: HomeDrawer(),
			body: HomeBody(),
		),
	);
  }
}

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Theme.of(context).primaryColor,
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                accountName: Text('Mário Santos'),
                accountEmail: Text('Desenvolvedfor Front-end'),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('M')),
              ),
              ListTile(
                title: Text('Sair'),
              )
            ])));
  }
}

class HomeBody extends StatefulWidget {
	@override
	HomeBodyState createState() => HomeBodyState();
}

class HomeBodyState extends State<HomeBody> {
	@override
	Widget build(BuildContext context) {
		List<dynamic> parsed = json.decode('[{"dia":"2019-01-06T21:39:11.652Z","cardapio":{"pratoPrincipal":"Frango empanado","guarnicao":"Macarrão a bolonhesa","salada1":"Cenoura fatiada","salada2":"Alface","sobremesa":"Moranguete"}}]');

		parsed.forEach((item) {
			(item['cardapio'] as Map<String, dynamic>).forEach((key, value) {
				print(value);
			});
		});

		return Column(
			children: <Widget>[
				Container(
					color: Colors.blueGrey[800],
					alignment: Alignment.topRight,
					padding: new EdgeInsets.only(
						top: 16.0,
						left: 16.0,
						right: 16.0,
						bottom: 16.0,
					),
					child: Text(
						'Semana 36', 
						style: TextStyle(
							fontSize: 14.0,
							fontWeight: FontWeight.w600
						)
					),
				),
				Container(
					color: Colors.blueGrey[800],
					child: TabBar(
						tabs: [
							Container(
								padding: EdgeInsets.only(top: 8.0),
								height: 80.0,
								child: Tab(
									child: Column(
										children: <Widget>[
											Text('Jan', style: TextStyle(fontSize: 14.0)),
											Text('06', style: TextStyle(fontSize: 24.0)),
											Text('Segunda', style: TextStyle(fontSize: 10.0)),
										],
									)
								),
							)
						],
					),
				)
				
			],
		);
	}
}
