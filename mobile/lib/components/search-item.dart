import 'package:flutter/material.dart';
import 'package:mobile/models/city.dart';
import 'package:mobile/pages/home-page.dart';

class SearchItem extends StatelessWidget {
  final City item;
  const SearchItem(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(city: item),
          ),
        );
      },
      child: Container(
        width: 50.0,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('${item.city}, ${item.regionCode}, ${item.country}'),
        ),
      ),
    );
  }
}
