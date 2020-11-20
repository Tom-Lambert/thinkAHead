

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomeStatelessWidget()

    );
  }
}

class MyHomeStatelessWidget extends StatelessWidget {
  MyHomeStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Think AHead'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _SoloState()),
                );
              },
              
              child: const Text('Solo', 
              style: TextStyle(fontSize: 20),
              
              ),
            ),
            
            RaisedButton(
              onPressed: () {},
              child: const Text('1 contre 1', 
              style: TextStyle(fontSize: 20)
              ),
            ),
          ],
        ),
      )
    );
  
  }
}

class _SoloState extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Think AHead'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //Text("Solo state development !"),
            _DrawGrid(5)
            
          ],
        ),
      )
    );
  }
}

class _DrawGrid extends StatelessWidget {
  
  //var _grid = [];

  List <List<_Cell>> _grid; 
  final rows = <TableRow>[];

  _DrawGrid(int size) {
    
    
    // for (var column in _grid) {
    //   for (var cell in column) {
    //     cell = new _Cell(x, y);
    //   }
    // }
    _grid = new List.generate(size, (i) => new List(size));
    
    for (var y = 0; y < size; y++) {
      for (var x = 0; x < size; x++) {
        _grid[y][x] = new _Cell(x, y);
      }
    }
    //print("start write grid :");
    //print(graphArray);
    //print(graphArray[2][4]._posX);
    //print("grid");

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        // for (var item in _grid) {
        //   for (var i in item) {
        //     new Text('$i')
        //   }
        // }
         //new Text('$_grid'),
          // for (var i = 0; i < '$_grid'; i++) {
            
          // }
          // GridView.count(
          //   crossAxisCount: 2,
          //   children: <Widget>[
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //     FlutterLogo(),
          //   ],
          // )

          // Table( border:
          //   TableBorder.all(width: 2.0, color: const Color(0xFF000000)),
          //   children: [
          //     TableRow(
          //       children: [
          //         TableCell(child: Text(this._grid.toString()),
          //         )
          //       ],
                
          //     ),
          //   ]
          // ),
        ],
      )
    );
  }
}
class _Cell extends StatelessWidget{
    var _posX;
    var _posY;
    var _Value;
  _Cell(int x, int y) {
    this._posX = x;
    this._posY = y; 
    this._Value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(this._Value)
        ],
      )
    );
  }
}