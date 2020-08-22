import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sia_app/screens//constants.dart';
import 'package:sia_app/screens//details_screen.dart';
import 'package:sia_app/screens/category_title.dart';
import 'package:sia_app/screens//food_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: Theme.of(context).primaryColor,
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontWeight: FontWeight.bold),
            body1: TextStyle(color: kTextColor),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          //child:  Image.asset("assets/images/vegan-cobb-salad-tempeh-bacon.jpg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              //child: Image.asset("assets/images/vegan-cobb-salad-tempeh-bacon.jpg"),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              "Welcome to our \n Extravagant Kitchen!", textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "TIME", active: true, ),
                CategoryTitle(title: "00-06"),
                CategoryTitle(title: "06-12"),
                CategoryTitle(title: "12-18"),
                CategoryTitle(title: "18-00"),
              ],
            ),
          ),
          /*Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/images/vegan-cobb-salad-tempeh-bacon.jpg"),
          ),*/
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/images/vegan-cobb-salad-tempeh-bacon.jpg",
                  ingredient: "Tomatoes",
                  calories: "420Kcal",
                  description:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                FoodCard(
                  press: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
    return DetailsScreen();
    }),
    );
    },
                  title: "Mixed Vegetable Pasta",
                  image: "assets/images/vegan-cobb-salad-tempeh-bacon.jpg",
                  calories: "520Kcal",
                  ingredient: "lentils",
                  description:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.19),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Request a special meal!",
                        style: Theme.of(context).textTheme.button, textScaleFactor: 1.5 ,
                      ),
                      SizedBox(width: 30),
                      SvgPicture.asset(
                        "assets/icons/forward.svg",
                        height: 11,
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
