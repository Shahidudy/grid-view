import 'package:flutter/material.dart';
import 'package:grid_view_flutter/screens/my_grid_view_extend.dart';

class MyGridViewCustom extends StatelessWidget {
  const MyGridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GRID VIEW CUSTOM'),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 49,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text("$index")),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://picsum.photos/seed/$index/200',
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyGridViewExtend()));
          },
          child: Text('GO TO GRID EXTEND')),
    );
  }
}
