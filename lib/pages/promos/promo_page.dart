import 'package:flutter/material.dart';
import 'package:poc_autoroute/utilities.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('promo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Utilities.getRouteStack(context),
          child: Text("check_stack"),
        ),
      ),
    );
    // return GridView.builder(
    //   itemCount: 10,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2),
    //   itemBuilder: (BuildContext context, int index) {
    //     return new Card(
    //       child: new GridTile(
    //         footer: new Text('satu $index'),
    //         child: new Text('satu $index'), //just for testing, will fill with image later
    //       ),
    //     );
    //   },
    // );
  }
}
