import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  final List<int> items; 
  final Function(int) onBoxTap; 

  const MyGrid({Key? key, required this.items, required this.onBoxTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; 
    final height = MediaQuery.of(context).size.height; 

    final axisCount = (width / 150).floor(); 
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / axisCount; 
        final itemHeight = constraints.maxHeight/ (height/100).floor();

        return Wrap(
          spacing: 10, 
          runSpacing: 10, 
          children: items.map((id) {
            return GestureDetector(
              onTap: () => onBoxTap(id), 
              child: Container(
                width: itemWidth - 10,
                height:  itemHeight - 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Box $id',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
