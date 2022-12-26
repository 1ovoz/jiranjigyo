import 'package:flutter/material.dart';
import 'login.dart';
import 'reservation.dart';

var stepList = List.empty(growable: true);
var index = 1;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
  }
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            )
                        ),
                        child: const Text("대충 이미지"),
                      ),
                      Container(
                        width: 205,
                        height: 100,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.centerLeft,
                        child: const Text("로그인 전"),
                      ),
                      ElevatedButton(
                        child: const Icon(Icons.login),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage())
                          );
                        },
                      ),
                      const SizedBox(
                        width: 25,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                  thickness: 1.0,
                ),
                Container(
                  width: 360,
                  height: 30,
                  padding: const EdgeInsets.fromLTRB(15.0, 0 , 15.0, 0),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.black
                      )
                  ),
                  child: Row(
                    children: const [
                      Text("대충 공지"),
                      SizedBox(
                        width: 230,
                      ),
                      Text("더보기"),
                    ],
                  )
                ),
                const Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  height: 400,
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.black
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("나의 예약 현황",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text("더보기",
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: getContent(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ReservationPage())
                          );
                        },
                        child: const Text("예약",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ReservationPage())
                        );
                      },
                      child: const Text("예약 확인",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ReservationPage())
                        );
                      },
                      child: const Text("민원",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ReservationPage())
                        );
                      },
                      child: const Text("퇴실",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 400,
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.black
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("공지사항",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text("더보기",
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: getContent(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                MyTextInput(notifyParent: refresh),
              ],
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: "예약",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done),
              label: "예약확인"
          ),
        ],
      ),
    );
  }
}

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key, required this.notifyParent});
  final Function() notifyParent;

  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput>{
  final myTitleController = TextEditingController();
  final myTimeController = TextEditingController();
  final myFileNameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('제목'),
              TextField(
                controller: myTitleController,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("시간"),
              TextField(
                controller: myTimeController,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    child: const Icon(Icons.done),
                    onPressed: () {
                      stepList.add([myTimeController.text, myTitleController.text]);
                      widget.notifyParent();
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    child: const Icon(Icons.close),
                    onPressed: () {
                      stepList = List.empty(growable: true);
                      widget.notifyParent();
                    },
                  ),
                ],
              )
            ]
        )
    );
  }
}

List<Widget> getContent() {
  index = 1;
  List<Widget> tiles = [];
  if(stepList.isEmpty) {
    tiles.add(const Text("empty"));
  } else {
    for (var element in stepList) {
      tiles.add(StepTile(Step(element[0], element[1])));
      index++;
    }
  }
  return tiles;
}
class Step{
  Step(this.title, this.time);

  String title;
  String time;
}

class StepTile extends StatelessWidget{
  StepTile(this._step, {super.key});

  final Step _step;
  final ind = index.toString();

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ListTile(
          title: Text(_step.time),
          leading: Text(ind),
          subtitle: Text(_step.title, textAlign: TextAlign.right,),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
      ],
    );
  }
}