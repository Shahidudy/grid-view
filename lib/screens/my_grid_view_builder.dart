import 'package:flutter/material.dart';
import 'package:grid_view_flutter/screens/my_grid_view_custom.dart';

class MyGridViewBuilder extends StatelessWidget {
  const MyGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRID VIEW BUILDER'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://picsum.photos/seed/$index/200',
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton.icon(
          icon: Icon(Icons.arrow_forward_outlined),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyGridViewCustom();
            }));
          },
          label: Text('Goto Grid Custom')),
    );
  }
}
