import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

import 'food_court_info.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: themeData,
  ));
}
//----------------------------------------------------------------------------//
class MultiSelectDialogItem<V> {
  const MultiSelectDialogItem(this.value, this.label);

  final V value;
  final String label;
}

class MultiSelectDialog<V> extends StatefulWidget {
  MultiSelectDialog({Key? key, required this.items, required this.initialSelectedValues}) : super(key: key);

  final List<MultiSelectDialogItem<V>> items;
  final Set<V> initialSelectedValues;

  @override
  State<StatefulWidget> createState() => _MultiSelectDialogState<V>();
}

class _MultiSelectDialogState<V> extends State<MultiSelectDialog<V>> {
  final _selectedValues = Set<V>();

  void initState() {
    super.initState();
    _selectedValues.addAll(widget.initialSelectedValues);
  }

  void _onItemCheckedChange(V itemValue, bool checked) {
    setState(() {
      if (checked) {
        _selectedValues.add(itemValue);
      } else {
        _selectedValues.remove(itemValue);
      }
    });
  }

  void _onCancelTap() {
    Navigator.pop(context);
  }

  void _onSubmitTap() {
    Navigator.pop(context, _selectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Selection Menu'),
      contentPadding: const EdgeInsets.only(top: 12.0),
      content: SingleChildScrollView(
        child: ListTileTheme(
          contentPadding: const EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
          child: ListBody(
            children: widget.items.map(_buildItem).toList(),
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: const Text('CANCEL'),
          onPressed: _onCancelTap,
        ),
        FlatButton(
          child: const Text('OK'),
          onPressed: () {
            _onSubmitTap;
            Navigator.push(context, PageFourA());
          }
        )
      ],
    );
  }

  Widget _buildItem(MultiSelectDialogItem<V> item) {
    final checked = _selectedValues.contains(item.value);
    return CheckboxListTile(
      value: checked,
      title: Text(item.label),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => _onItemCheckedChange(item.value, checked!),
    );
  }
}
//--
class MultiSelectDialogItemA<V> {
  const MultiSelectDialogItemA(this.value, this.label);

  final V value;
  final String label;
}

class MultiSelectDialogA<V> extends StatefulWidget {
  MultiSelectDialogA({Key? key, required this.items, required this.initialSelectedValues}) : super(key: key);

  final List<MultiSelectDialogItemA<V>> items;
  final Set<V> initialSelectedValues;

  @override
  State<StatefulWidget> createState() => _MultiSelectDialogStateA<V>();
}

class _MultiSelectDialogStateA<V> extends State<MultiSelectDialogA<V>> {
  final _selectedValues = Set<V>();

  void initState() {
    super.initState();
    _selectedValues.addAll(widget.initialSelectedValues);
  }

  void _onItemCheckedChange(V itemValue, bool checked) {
    setState(() {
      if (checked) {
        _selectedValues.add(itemValue);
      } else {
        _selectedValues.remove(itemValue);
      }
    });
  }

  void _onCancelTap() {
    Navigator.pop(context);
  }

  void _onSubmitTap() {
    Navigator.pop(context, _selectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Selection Menu'),
      contentPadding: const EdgeInsets.only(top: 12.0),
      content: SingleChildScrollView(
        child: ListTileTheme(
          contentPadding: const EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
          child: ListBody(
            children: widget.items.map(_buildItem).toList(),
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: const Text('CANCEL'),
          onPressed: _onCancelTap,
        ),
        FlatButton(
            child: const Text('OK'),
            onPressed: () {
              _onSubmitTap;
              Navigator.push(context, PageFourB());
            }
        )
      ],
    );
  }

  Widget _buildItem(MultiSelectDialogItemA<V> item) {
    final checked = _selectedValues.contains(item.value);
    return CheckboxListTile(
      value: checked,
      title: Text(item.label),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => _onItemCheckedChange(item.value, checked!),
    );
  }
}
//----------------------------------------------------------------------------//
final ThemeData themeData = ThemeData(
  canvasColor: const Color.fromARGB(255, 204, 153, 0),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
);

// class _MyAppState extends State<MyApp> {
//
//
// }

class MyApp extends StatelessWidget {
  // MyApp({Key? key}) : super(key: key);
  // @override
  // State<StatefulWidget> createState() => MyApp();
  Color c = const Color.fromARGB(255, 204, 153, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("The Purdue Meal Finder App!"),
          backgroundColor: Colors.black,
          elevation: 2.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(
                    context); // popping page 3 out of the array of widgets
                // takes you back to page 2
              },
            )
          ],
        ),
        body: Center(
            child: ElevatedButton(
              onPressed: () {
                style:
                ElevatedButton.styleFrom(
                    onPrimary: c
                );
                Navigator.push(context, PageTwo());
              },
              child: const Text("Click here to continue!"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            )));
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  static var diningHallFields = <Widget>[];
  String _valueDropdownGrade = "";
  List<String> items = [
    "HILLENBRAND",
    "EARHART",
    "WINDSOR",
    "WILEY",
    "FORD"
  ];

  @override
  void initState() {
    _valueDropdownGrade = items[0];
    diningHallFields.add(
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
          return DropdownButtonHideUnderline(
              child: Container(
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  child: DropdownButton<String>(
                      icon: const Icon(Icons.fastfood),
                      hint: const Text('Choose the Dining Hall'),
                      onChanged: (newValue) {
                        setState(() => _valueDropdownGrade = newValue!);
                      },
                      value: _valueDropdownGrade,
                      items: items.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: SizedBox(
                              width: 100.0, // for example
                              child: Text(value, textAlign: TextAlign.center),
                            ));
                      }).toList())));
        }));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stepper(steps: [
          Step(
            title: const Text("Start"),
            content: Form(
              child: Column(children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: diningHallFields.length,
                    itemBuilder: (context, index) {
                      return diningHallFields[index];
                    })
              ]),
            ),
          )
        ]));
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Selection / Review"),
          elevation: 1.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
              child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageThreeA());
              },
              child: const Text("Find Your Ideal Dining Hall..."),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  )
            ),
          ),
              Container(
              child: ElevatedButton(
              onPressed: () {
              Navigator.push(context, PageThreeB());
              },
              child: const Text("Write a Review..."),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  )
      ))
    ]))
    );
  });
}

class PageThreeA extends MaterialPageRoute<Null> {
  static void _showMultiSelect(BuildContext context) async {

    final items = <MultiSelectDialogItem<int>>[
      const MultiSelectDialogItem(1, "Vegan"),
      const MultiSelectDialogItem(2, "Vegetarian"),
      const MultiSelectDialogItem(3, "Nut Allergies"),
      const MultiSelectDialogItem(4, "Lactose-Intolerant"),
      const MultiSelectDialogItem(5, "Gluten-Free"),
      const MultiSelectDialogItem(6, "Pescatarian"),
    ];

    final _selectedValues = await showDialog<Set<int>>(
      context: context,
      builder: (BuildContext context) {
        return MultiSelectDialog(
          items: items,
          initialSelectedValues: [1].toSet(),
        );
      },
    );

      // Navigator.push(context, PageFourA());

  }
  PageThreeA()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selection Menu"),
        backgroundColor: Colors.black,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(
                  context); // popping page 3 out of the array of widgets
              // takes you back to page 2
            },
          )
        ],
      ),
        body :Center(
          child: ElevatedButton(
            onPressed: () => {
              _showMultiSelect(context),

            },
              child: const Text("Select Your Dietary Restrictions..."),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),

          )
        )
      );
  });
}

class PageFourA extends MaterialPageRoute<Null> {
  PageFourA()
    : super(builder : (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Dining Hall Options!"),
        backgroundColor: Colors.black,
        elevation: 2.0,
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.close),
            onPressed: () {
            Navigator.pop(context);
            },
        )
      ],
    ),
      body: Center(
        child: diningHallData()
      ),
    );
    }
  );
}
class diningHallData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<food_court_info>(
          future: getStudent(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final meal = snapshot.data;
              return Text("Breakfast = ${meal!.breakfast} \n"
                  "Lunch = ${meal.lunch} \n"
                  "Dinner = ${meal.dinner}");
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return CircularProgressIndicator();
          }
        )
      )
    );
  }
}
Future<food_court_info> getStudent() async {
  final url = "https://api.hfs.purdue.edu/menus/v2/locations/Wiley/11-22-2021";
  final response = await http.get(Uri.parse(url));
  print(response);
  if (response.statusCode == 200) {
    final Xml2Json xml2json = Xml2Json();
    xml2json.parse(response.toString());
    var jsonString = xml2json.toParker();
    var data = jsonDecode(jsonString);
    return food_court_info.fromJson(data);
  } else {
    throw Exception("Failed to fetch data from API");
  }

}

class PageThreeB extends MaterialPageRoute<Null> {
  static void _DropDownState(BuildContext context) async {
    final items = <MultiSelectDialogItemA<int>>[
      const MultiSelectDialogItemA(1, "Hillenbrand"),
      const MultiSelectDialogItemA(2, "Earhart"),
      const MultiSelectDialogItemA(3, "Windsor"),
      const MultiSelectDialogItemA(4, "Ford"),
      const MultiSelectDialogItemA(5, "Wiley"),
    ];
    // final items = ["Windsor", "Wiley", "Ford", "Earhart", "Hillenbrand"];
    final selectedValues = await showDialog<Set<int>>(
      context: context,
      builder: (BuildContext context) {
        return MultiSelectDialogA(
          items: items,
          initialSelectedValues: [1].toSet(),
        );
      },
    );
  }
  // static String? value;
  PageThreeB()
      : super(builder: (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Review Page"),
          backgroundColor: Colors.black,
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
        body :Center(
            child: ElevatedButton(
                onPressed: () => {
                  _DropDownState(context)
                },
                child: const Text("Select the Dining Hall"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                )
            )
        )
        // dropdown for dining hall choices
        // body: Center(
        //   child: DropdownButton(
        //     value: value,
        //     onChanged: (newValue) {
        //       setState(() {            //issue
        //         value = newValue as String?;
        //       });
        //     },
        //     items: items.map((valueItem) {
        //       return DropdownMenuItem(
        //         value: valueItem,
        //         child: Text(valueItem),
        //       );
        //     }).toList(),
        //   ),
        // ),
    );
  });
  static DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )
  );
}

class PageFourB extends MaterialPageRoute<Null> {
  PageFourB()
      : super(builder : (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Review Page!"),
        backgroundColor: Colors.black,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                hintText: "Your Name",
                fillColor: Colors.black12,
                  filled: true,
                  border: UnderlineInputBorder()
              ),
            ),
            TextField(
                decoration: InputDecoration(
                  labelText: "Review",
                  labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  hintText: "Leave Your Review",
                  fillColor: Colors.black12,
                  filled: true,
                  border: UnderlineInputBorder()
                ),
                maxLines: 10,
            )
          ],
        ),
      )
    );
  }
  );
}
