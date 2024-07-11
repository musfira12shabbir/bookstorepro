import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List images = [
    "https://mockuphunt.co/cdn/shop/products/book-hardcover-mockup-three-views-psd_60796bf2ee381_1200x.jpg?v=1647947982",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqa8zhc1Eaq8ztS9sWdmmDdz8byKZz7wV8dw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM1CkUuyIbjq7fyCEFoCHLzvgyE9WgtmsRwA&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Carousel Container - > Carousel

              CarouselSlider(items: List.generate(images.length, (index) {
                return Container(
                  width: double.infinity,

                  height: 300,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  //  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },), options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  viewportFraction: 1
              )),

              // Card Container - > GridView
              SizedBox(
                height: 10,
              ),
              Text("CATEGORIES",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),

              GridView.count(

                mainAxisSpacing: 10,
                childAspectRatio: 170 / 250,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                crossAxisCount: 2,children: List.generate(10, (index) {
                return  Container(
                  height: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 170,
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(image: NetworkImage("data:image/jpeg;base64,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"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text("Book Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      Text("Book Price 4678..",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),


                    ],
                  ),
                );
              },),)
            ],
          ),
        )
    );
  }
}
