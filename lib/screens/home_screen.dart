import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Background(),
          _HomeBody()
        ]
      ),
      bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}