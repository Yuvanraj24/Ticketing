import 'package:flutter/material.dart';
import 'package:ticketin_system/views/place_screen_view.dart';

import '../model/place_model.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  //0 = hotel , 1=flight
  int _searchType = 0;

  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(
        Container(
          height: 80.0,
          child: Center(
            child: ListTile(
              leading: Hero(
                tag: place.imageUrl,
                child: Image(image: NetworkImage(place.imageUrl)),
              ),
              title: Text(
                place.city,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '${place.properties} properties',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlaceScreen(place: place),
                    ),
                  );
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFFFAF6F1),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
    return Column(children: popularPlaces);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("SEARCH"),
        actions: [
          IconButton(
            onPressed: () {
              print("Menu");
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Book unique homes\nand experience",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _searchType = 0;
                      });
                    },
                    child: Text(
                      "Hotels",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        primary:
                            _searchType == 0 ? Colors.orange : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: _searchType == 0
                                    ? Colors.orange
                                    : Colors.black))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _searchType = 1;
                      });
                    },
                    child: Text(
                      "Flights",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        primary:
                            _searchType == 1 ? Colors.orange : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: _searchType == 1
                                    ? Colors.orange
                                    : Colors.black))),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Where",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.blue[400],
                  ),
                ),
              ),
              Divider(
                color: Colors.black54,
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Check-in-Check-out",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.blue[400],
                  ),
                ),
              ),
              Divider(
                color: Colors.black54,
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "1 Adult, 0 Children, 1 Room",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.blue[400],
                  ),
                ),
              ),
              Divider(
                color: Colors.black54,
                height: 10,
              ),
              SizedBox(height: 18),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 57)),
                  child: Text(
                    "Search",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 30),
              Text(
                "Popular Places",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              _buildPopularPlaces()
        
            ],
          ),
        ),
      ),
    );
  }
}
