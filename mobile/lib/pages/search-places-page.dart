import 'package:flutter/material.dart';
import 'package:mobile/components/search-item.dart';
import 'package:mobile/providers/cities-provider.dart';
import 'package:provider/provider.dart';

class SearchPlacesPage extends StatefulWidget {
  const SearchPlacesPage({Key? key}) : super(key: key);

  @override
  State<SearchPlacesPage> createState() => _SearchPlacesPageState();
}

class _SearchPlacesPageState extends State<SearchPlacesPage> {
  final _searchController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    Provider.of<CitiesProvider>(
      context,
      listen: false,
    ).clearCities();
  }

  @override
  Widget build(BuildContext context) {
    final CitiesProvider citiesProvider = Provider.of(context);

    void _searchPlaces(namePrefix) {
      setState(() {
        _isLoading = true;
      });
      citiesProvider.getCitiesByNamePrefix(namePrefix).then((value) => {
            setState(() {
              _isLoading = false;
            })
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          showCursor: true,
          decoration: InputDecoration.collapsed(
            hintText: 'Enter the city name...',
            focusColor: Colors.white,
          ),
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
          controller: _searchController,
        ),
        actions: [
          IconButton(
            onPressed: () => _searchPlaces(_searchController.value.text),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: citiesProvider.items.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>
                    SearchItem(citiesProvider.items[index]),
              ),
            ),
    );
  }
}
