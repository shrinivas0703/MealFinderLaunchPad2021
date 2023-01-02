import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.lightGreenAccent,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
      onPressed: () {
        Navigator.push(context, PageTwo());
      },
      child: Text("Go to Page Two"),
    )));
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).canvasColor,
                elevation: 1.0,
              ),
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, PageThree());
                  },
                  child: Text("Go to Page Three"),
                ),
              ));
        });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Last Page"),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(
                        context); // popping page 3 out of the array of widgets
                    // takes you back to page 2
                  },
                )
              ],
            ),
            body: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => true);
                },
                child: Text("Go Home!"),
              ),
            ),
          );
        });
}
