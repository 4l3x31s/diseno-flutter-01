import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpeg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Sit esse fugiat incididunt irure minim id duis nisi sit velit magna est id nulla. Consectetur exercitation esse commodo minim sunt occaecat occaecat in consequat dolore cillum. Occaecat dolor eiusmod tempor minim pariatur aute enim adipisicing culpa occaecat laborum deserunt dolore. Ad elit ipsum est duis aliquip nostrud veniam occaecat mollit qui in ut nostrud. Irure et aliqua deserunt ad excepteur nostrud ea ex voluptate ut voluptate. Exercitation et voluptate excepteur cillum cupidatat consequat in reprehenderit qui qui ipsum ullamco occaecat mollit.',)
          )
        ],
      )
   );
  }
}
class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('kandersteg, Switzerland', style: TextStyle(fontSize: 14, color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
