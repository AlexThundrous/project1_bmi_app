import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int age = 15;
  int weight = 70;
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI App',
        //theme: ThemeData(fontFamily: 'NotoSans'),
        home: Scaffold(
            appBar: AppBar(
                title: const Text('BMI Calculator'),
                centerTitle: true,
                backgroundColor: const Color(0x49363B84)),
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0x45160B72),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 165,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(07),
                              shape: BoxShape.rectangle,
                              color: const Color(0x496773EA),
                            ),
                            margin: const EdgeInsets.only(
                                top: 25.0, left: 25.0, right: 4.0),
                            child: ListView(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(20.0),
                              children: const [
                                Icon(Icons.male_sharp,
                                    size: 100, color: Colors.white),
                                Center(
                                    child: Text('Male',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70)))
                              ],
                            )),
                        Container(
                            height: 165,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(05),
                                shape: BoxShape.rectangle,
                                color: const Color(0x496773EA)),
                            margin: const EdgeInsets.only(
                                top: 25.0, right: 25.0, left: 4.0),
                            child: ListView(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(20.0),
                              children: const [
                                Icon(Icons.female_sharp,
                                    size: 100, color: Colors.white),
                                Center(
                                    child: Text('Female',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white70,
                                        )))
                              ],
                            ))
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Container(
                        height: 200,
                        width: 338,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(04),
                            shape: BoxShape.rectangle,
                            color: const Color(0x49363B84) //0x49363B84
                            ),
                        margin: const EdgeInsets.all(25.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("Height",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white70,
                                  )),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("$height",
                                        style: const TextStyle(
                                            fontSize: 50,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    const Text("cm",
                                        style: TextStyle(
                                            fontSize: 27,
                                            color: Colors.white70))
                                  ]),
                              Slider(
                                activeColor: Colors.indigoAccent,
                                inactiveColor: Colors.white,
                                thumbColor: Colors.pinkAccent,
                                min: 100,
                                max: 270,
                                value: height.toDouble(),
                                onChanged: (value) {
                                  setState(() {
                                    height = value.toInt();
                                  });
                                },
                              ),
                            ])),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 200,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(04),
                                shape: BoxShape.rectangle,
                                color: const Color(0x49363B84)),
                            margin: const EdgeInsets.only(right: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Weight',
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontSize: 80,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        icon:
                                            const Icon(Icons.remove_circle_outlined),
                                        color: Colors.indigoAccent,
                                        iconSize: 40,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        icon: const Icon(Icons.add_circle_outlined),
                                        color: Colors.indigoAccent,
                                        iconSize: 40,
                                      )
                                    ])
                              ],
                            )),
                        Container(
                            height: 200,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(04),
                                shape: BoxShape.rectangle,
                                color: const Color(0x49363B84)),
                            margin: const EdgeInsets.only(left: 4.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Age',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white70,
                                      )),
                                  Text(
                                    '$age',
                                    style: const TextStyle(
                                        fontSize: 80,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          icon: const Icon(
                                              Icons.remove_circle_outlined),
                                          color: Colors.indigoAccent,
                                          iconSize: 40,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          icon: const Icon(Icons.add_circle_outlined),
                                          color: Colors.indigoAccent,
                                          iconSize: 40,
                                        )
                                      ])
                                ]))
                      ],
                    ),
                  )
                ]))),
        debugShowCheckedModeBanner: false);
  }
}
