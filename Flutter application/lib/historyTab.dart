import 'package:flutter/material.dart';
import 'list.dart';

class Historytab extends StatelessWidget {
  const Historytab ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context){
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index){
          return CustomList(
            title: 'Acne',
            subtitle: "10:31 PM, 3/1/23",
            context: context,
            index: index
          );
    });
  }
}

Widget CustomList({
  required String title,
  required String subtitle,
  required BuildContext context,
  required int index,
}){
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.cyan,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),),
    subtitle: Text(subtitle,
    style: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 15
    ),
    ),
    leading:CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('images/name.png'),
    ),
    trailing: const Icon(Icons.arrow_forward,
      color: Colors.cyan,),
    onTap: () {
      Navigator.push(
          context ,
          MaterialPageRoute(
              builder: (context) => DetailPage()
          ));
    },
  );
}
