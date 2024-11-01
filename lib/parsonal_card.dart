import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lecture2/controller.dart';

class PersonalCard extends StatelessWidget {
  PersonalCard({super.key});
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Container(
        margin: EdgeInsets.all(20),
        width: double.maxFinite,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF89dad0)
        ),
        child: Center(
            child: GetX<Controller>(builder: (_) => Text(
              'Name: ${controller.person().name}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ))
        ),
      ),
      Container(
          margin: EdgeInsets.all(20),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF89dad0)
          ),
          child: Center(
            child: Obx(() => Text(
              'Age: ${controller.person().age}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),)
      ),
    ),
    Container(
    margin: EdgeInsets.all(20),
    width: double.maxFinite,
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xFF89dad0)
    ),
    child: Center(
    child: GetX(
      init: Controller(),
      builder: (controller) => Text(
        'Age: ${Get.find<Controller>().person().age}',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    ),
    )
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton( //이거 누르면 첫번째 버튼 이름 변경
    onPressed: (){
    controller.updateInfo();
    },
    child: Icon(Icons.add),
    backgroundColor: Colors.red,
    ),
    );
  }
}
