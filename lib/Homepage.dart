import 'package:bloc/Constants.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _icons(text,iconName){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
          Image.asset("assets/${iconName}",height: 50.0,),
          Text("${text}",style: kNormalTextStyle,)
      ],
    );
  }
  Widget _NavBar(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/menu.jpeg",height: 50.0,),
          ],
        ),
        SizedBox(height: 50.0,),
        Row(
          children: <Widget>[
            Text("What would \n you read,Ariel?",style: kHeadingTextStyle,),
          ],
        )
      ],
    );
  }
  Widget _planer(){
    return Container(
      height: 200.0,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Categories",style: kCategoriesTextStyle,),
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _icons("Check","folder.png"),
                      SizedBox(width: 30.0,),
                      _icons("Agency","agency.png"),
                      SizedBox(width: 30.0,),
                      _icons("Plan","calender.jpg"),
                      SizedBox(width: 30.0,),
                      _icons("Experience","bag.jpeg"),
                    ],
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _searchBar(){
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black,
            offset: Offset(3, -2),
            spreadRadius: -12.0,
            blurRadius: 12.0,
          )]
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0,),
          Icon(Icons.search,color: Colors.grey,),
          SizedBox(width: 20.0,),
          Text("title, genre, author",style: kNormalTextStyle)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              _NavBar(),
              SizedBox(height: 50.0,),
              _searchBar(),
              SizedBox(height: 90.0,),
              _planer(),
            ],
          ),
        ),
      ),
    );
  }
}
