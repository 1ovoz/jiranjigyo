import 'package:flutter/material.dart';

Set<String> TimeMap = {
  "AM 9:00",
  "AM 10:00",
  "AM 11:00",
  "PM 12:00",
  "PM 1:00",
  "PM 2:00",
  "PM 3:00",
  "PM 4:00",
  "PM 5:00",
  "PM 6:00",
  "PM 7:00",
  "PM 8:00",
};
Set<String> TableMap = {
  "가",
  "나",
  "다",
  "라",
  "마",
};
final List<String> _filters = <String>[];

class ReservationPage extends StatefulWidget{
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {

  @override
  void initState(){
    super.initState();
  }
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                      },
                    icon: const Icon(Icons.arrow_back)),
                const Text("예약"),
              ],
            ),
            bottom: const TabBar(
                tabs: [
                  Tab(child: Text("17")),
                  Tab(child: Text("18")),
                  Tab(child: Text("19")),
                  Tab(child: Text("20")),
                  Tab(child: Text("21")),
                  Tab(child: Text("22")),
                  Tab(child: Text("23")),
                ]
            ),
          ),
            body: TabBarView(
                children: getPage(),
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.done),
                    label: "민원"
                ),
              ],
            ),
        ),
      ),
    );
  }
}
List<Widget> getPage() {
  List<Widget> tiles = [];
  int i = 0;

  while (i < 7) {
    i++;
    tiles.add(Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: getTable(),
      )
    ));
  }
  return tiles;
}

List<Widget> getTable() {
  List<Widget> tiles = [];

  for (var element in TableMap) {
    tiles.add(Row(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: Colors.black
              )
          ),
          height: 80,
          width: 80,
          child: Text(element),
        ),
        const getTime(),
      ],
    ));
  }
  tiles.add(const SizedBox(height: 5.0));
  tiles.add(const Text('*하루 최대 이용 시간은 4시간 입니다.'));
  tiles.add(const Text('*사용 완료 시 예약이 비어 있을 경우\n1시간 연장이 가능 합니다.', textAlign: TextAlign.center,));
  tiles.add(const SizedBox(height: 5.0));
  tiles.add(Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            color: Colors.cyanAccent,
            border: Border.all(
                width: 1,
                color: Colors.black
            )
        ),
      ),
      const SizedBox(width: 5.0),
      const Text("선택 중"),
      const SizedBox(width: 5.0),
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
                width: 1,
                color: Colors.black
            )
        ),
      ),
      const SizedBox(width: 5.0),
      const Text("시용 불가"),
      const SizedBox(width: 5.0),
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: Colors.black
            )
        ),
      ),
      const SizedBox(width: 5.0),
      const Text("선택 가능"),
    ],
  ));
  tiles.add(const SizedBox(height: 10.0));
  tiles.add(ElevatedButton(onPressed: (){}, child: const Text("다음으로")));

  return tiles;
}

class getTime extends StatefulWidget {
  const getTime({Key? key}) : super(key: key);

  @override
  State<getTime> createState() => _getTimeState();
}

class _getTimeState extends State<getTime> {

  @override
  void initState(){
    super.initState();
  }
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 300,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: TimeMap.map((String select) {
                //var name = SelectMap[select.name];
                return FilterChip(
                    label: Text(select),
                    selected: _filters.contains(select),
                    onSelected: (bool value){
                      setState(() {
                        if (value) {
                          if (!_filters.contains(select)) {
                            _filters.add(select);
                          }
                        } else {
                          _filters.removeWhere((String name) {
                            return name == select;
                          });
                        }
                      });
                    });
              }).toList()
          ),
        ),
      ],
    );
  }
}