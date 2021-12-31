import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl: 'https://w.wallhaven.cc/full/9m/wallhaven-9mkydk.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl: 'https://w.wallhaven.cc/full/z8/wallhaven-z8dg9y.png'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              name: 'Un hermoso paisaje',
              imageUrl: 'https://w.wallhaven.cc/full/dp/wallhaven-dpv8lj.jpg'),
        ],
      ),
    );
  }
}
