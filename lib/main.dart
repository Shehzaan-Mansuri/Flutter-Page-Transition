import 'package:flutter/material.dart';
import 'package:transitions_page/transitions_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transition',
      initialRoute: 'page1',
      routes: {
        'page1': ( _ ) => Page1(),
        'page2': ( _ ) => Page2(),
      },
    );
  }
}


class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
          child: MaterialButton(
            child: Text('Ir a pagina 2'),
            color: Colors.white,
            onPressed: (){
              TransitionsPage(
                context: context,
                child: Page2(),
                animation: AnimationType.fadeIn,
                duration: Duration(milliseconds: 300),
                //replacement: true,
              );
            },
          )
      ),
    );
  }
}



class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Pagina 2'),
      ),
    );
  }
}