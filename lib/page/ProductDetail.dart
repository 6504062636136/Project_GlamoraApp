import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AttractionScreen extends StatefulWidget {
  const AttractionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AttractionScreen();
  }
}

class _AttractionScreen extends State<AttractionScreen> {
  List<dynamic> _attraction = [];
  @override
  void initState(){
    super.initState();
    _fetchAttractions();
  }
  Future<void> _fetchAttractions() async{
    // Fetch data from API
    // Set data to _attractionList
    final response = await http.get(Uri.parse('https://www.melivecode.com/api/attractions'));
    setState(() {
          _attraction = json.decode(response.body);
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attraction'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Color.fromARGB(255, 216, 210, 210),
      ),
      body: ListView.builder(itemCount: _attraction.length,itemBuilder: (context, index){
        final attraction = _attraction[index];
        return ListTile(
          leading: SizedBox(width: MediaQuery.of(context).size.width*0.2,child: Image.network(attraction['coverimage'])),
          title: Row(
            children: [
              Text(attraction['name']),
             // Text(attraction['location']),
            ],
          ),
          subtitle:Text(attraction['detail'],
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          ), 
          
          
        );
      }),
    );
  }
}